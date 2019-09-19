import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show PlatformException;
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:provider/provider.dart' show Provider;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cone/src/state_management/file_model.dart';
import 'package:cone/src/state_management/settings_model.dart';
import 'package:cone/src/state_management/suggestions_model.dart';
import 'package:cone/src/state_management/transaction_model.dart';
import 'package:cone/src/state_management/posting_model.dart';
import 'package:cone/src/transaction.dart' show Posting, Transaction;
import 'package:cone/src/utils.dart' show transactionToString;

class ConeModel extends ChangeNotifier {
  //
  // Constructor
  //

  ConeModel({@required SharedPreferences sharedPreferences})
      : assert(sharedPreferences != null,
            'Please wait for shared preferences before initializing model'),
        _settings = SettingsModel(sharedPreferences: sharedPreferences),
        _file = FileModel(uri: sharedPreferences.getString('ledger_file_uri')),
        _suggestions = SuggestionsModel(),
        _transaction = TransactionModel() {
    refreshFileContents();
    resetTransaction();
  }

  //
  // Provider
  //

  static ConeModel of(BuildContext context, {bool listen}) {
    return Provider.of<ConeModel>(context, listen: listen ?? true);
  }

  //
  // Models
  //

  final SettingsModel _settings;
  final FileModel _file;
  final SuggestionsModel _suggestions;
  final TransactionModel _transaction;

  //
  // Settings
  //

  bool get debugMode => _settings.debugMode;
  String get defaultCurrency => _settings.defaultCurrency;
  bool get currencyOnLeft => _settings.currencyOnLeft;
  String get ledgerFileUri => _settings.ledgerFileUri;
  String get ledgerFileDisplayName => _settings.ledgerFileDisplayName;
  String get ledgerFileAlias => _file.alias;
  String get formattedExample =>
      currencyOnLeft ? '$defaultCurrency 5.00' : '5.00 $defaultCurrency';

  void toggleDebugMode() {
    _settings.toggleDebugMode();
    notifyListeners();
  }

  void setDefaultCurrency(String _defaultCurrency) {
    if (_defaultCurrency != null) {
      _settings.defaultCurrency = _defaultCurrency;
      notifyListeners();
    }
  }

  void toggleCurrencyOnLeft() {
    _settings.toggleCurrencyOnLeft();
    notifyListeners();
  }

  void setLedgerFile(String _ledgerFileUri, String _ledgerFileDisplayName) {
    _settings.setLedgerFile(_ledgerFileUri, _ledgerFileDisplayName);
    notifyListeners();
  }

  //
  // File
  //

  String get fileContents => _file.contents;
  bool get isRefreshingFileContents => _file.isRefreshingContents;
  bool get hideAddTransactionButton =>
      (fileContents == null) || isRefreshingFileContents;

  Future<void> pickLedgerFileUri() async {
    await _file.pickUri(debugMode: debugMode);
    _settings.setLedgerFile(_file.uri, _file.displayName);
    await refreshFileContents();
  }

  Future<void> refreshFileContents() async {
    await _file.refreshContents(notifyListeners: notifyListeners);
    _suggestions.updateSuggestions(fileContents: _file?.contents ?? '');
  }

  //
  // Suggestions
  //

  List<String> descriptionSuggestions(String text) {
    return _suggestions.descriptionSuggestions(text);
  }

  List<String> accountSuggestions(String text) {
    return _suggestions.accountSuggestions(text);
  }

  //
  // Save
  //

  bool get saveInProgress => _file.saveInProgress;

  bool get makeSaveButtonAvailable =>
      !saveInProgress && (debugMode || !transactionIsNotValid);

  Future<void> appendTransaction(String transaction) async {
    try {
      await _file.appendTransaction(
        transaction: transaction,
        notifyListeners: notifyListeners,
      );
    } on PlatformException catch (_) {
      rethrow;
    }
  }

  //
  // Transaction
  //

  void resetTransaction() {
    _transaction.reset(
      notifyListeners: notifyListeners,
      defaultCurrency: defaultCurrency,
    );
  }

  TextEditingController get dateController => _transaction.dateController;
  TextEditingController get descriptionController =>
      _transaction.descriptionController;
  FocusNode get dateFocus => _transaction.dateFocus;
  FocusNode get descriptionFocus => _transaction.descriptionFocus;
  SuggestionsBoxController get suggestionsBoxController =>
      _transaction.suggestionsBoxController;
  List<PostingModel> get postingModels => _transaction.postingModels;

  void ensurePostingsAreNotFull() => _transaction.ensurePostingsAreNotFull(
        defaultCurrency: defaultCurrency,
        notifyListeners: notifyListeners,
      );

  void removeAtAndNotifyListeners(int index) =>
      _transaction.removeAtAndNotifyListeners(
        index: index,
        notifyListeners: notifyListeners,
      );

  void closeSuggestionBoxControllers() =>
      _transaction.closeSuggestionBoxControllers();

  bool get transactionIsNotValid => _transaction.transactionIsNotValid;

  num amountHint(int i) => _transaction.amountHint(i);

  DateTime get initialDate {
    DateTime result;
    try {
      result = DateFormat('yyyy-MM-dd').parseStrict(dateController.text);
    } catch (_) {
      result = DateTime.now();
    }
    return result;
  }

  SnackBar snackBar(String transaction) => SnackBar(
        content: Text.rich(
          TextSpan(text: transaction),
          style: const TextStyle(
            fontFamily: 'IBMPlexMono',
          ),
        ),
      );

  //
  // Break this out into separate group of formatting utils
  //

  String formattedTransaction(String locale) => transactionToString(
        locale: locale,
        transaction: Transaction(
          dateController.text,
          descriptionController.text,
          postingModels
              .map((PostingModel pb) => Posting(
                    account: pb.accountController.text,
                    amount: pb.amountController.text,
                    currency: pb.currencyController.text,
                    currencyOnLeft: currencyOnLeft,
                  ))
              .toList(),
        ),
        currencyOnLeft: currencyOnLeft,
      );
}
