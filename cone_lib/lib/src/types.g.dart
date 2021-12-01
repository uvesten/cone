// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AccountDirective.serializer)
      ..add(Amount.serializer)
      ..add(Comment.serializer)
      ..add(CommodityDirective.serializer)
      ..add(Journal.serializer)
      ..add(OtherDirective.serializer)
      ..add(Posting.serializer)
      ..add(Transaction.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JournalItem)]),
          () => new ListBuilder<JournalItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Posting)]),
          () => new ListBuilder<Posting>()))
    .build();
Serializer<Journal> _$journalSerializer = new _$JournalSerializer();
Serializer<Comment> _$commentSerializer = new _$CommentSerializer();
Serializer<AccountDirective> _$accountDirectiveSerializer =
    new _$AccountDirectiveSerializer();
Serializer<CommodityDirective> _$commodityDirectiveSerializer =
    new _$CommodityDirectiveSerializer();
Serializer<OtherDirective> _$otherDirectiveSerializer =
    new _$OtherDirectiveSerializer();
Serializer<Transaction> _$transactionSerializer = new _$TransactionSerializer();
Serializer<Posting> _$postingSerializer = new _$PostingSerializer();
Serializer<Amount> _$amountSerializer = new _$AmountSerializer();

class _$JournalSerializer implements StructuredSerializer<Journal> {
  @override
  final Iterable<Type> types = const [Journal, _$Journal];
  @override
  final String wireName = 'Journal';

  @override
  Iterable<Object> serialize(Serializers serializers, Journal object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'journalItems',
      serializers.serialize(object.journalItems,
          specifiedType:
              const FullType(BuiltList, const [const FullType(JournalItem)])),
    ];

    return result;
  }

  @override
  Journal deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JournalBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'journalItems':
          result.journalItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JournalItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable<Object> serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'firstLine',
      serializers.serialize(object.firstLine,
          specifiedType: const FullType(int)),
      'lastLine',
      serializers.serialize(object.lastLine,
          specifiedType: const FullType(int)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'firstLine':
          result.firstLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lastLine':
          result.lastLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountDirectiveSerializer
    implements StructuredSerializer<AccountDirective> {
  @override
  final Iterable<Type> types = const [AccountDirective, _$AccountDirective];
  @override
  final String wireName = 'AccountDirective';

  @override
  Iterable<Object> serialize(Serializers serializers, AccountDirective object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'firstLine',
      serializers.serialize(object.firstLine,
          specifiedType: const FullType(int)),
      'lastLine',
      serializers.serialize(object.lastLine,
          specifiedType: const FullType(int)),
      'account',
      serializers.serialize(object.account,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AccountDirective deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountDirectiveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'firstLine':
          result.firstLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lastLine':
          result.lastLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'account':
          result.account = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CommodityDirectiveSerializer
    implements StructuredSerializer<CommodityDirective> {
  @override
  final Iterable<Type> types = const [CommodityDirective, _$CommodityDirective];
  @override
  final String wireName = 'CommodityDirective';

  @override
  Iterable<Object> serialize(Serializers serializers, CommodityDirective object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'firstLine',
      serializers.serialize(object.firstLine,
          specifiedType: const FullType(int)),
      'lastLine',
      serializers.serialize(object.lastLine,
          specifiedType: const FullType(int)),
      'commodity',
      serializers.serialize(object.commodity,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CommodityDirective deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommodityDirectiveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'firstLine':
          result.firstLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lastLine':
          result.lastLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'commodity':
          result.commodity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OtherDirectiveSerializer
    implements StructuredSerializer<OtherDirective> {
  @override
  final Iterable<Type> types = const [OtherDirective, _$OtherDirective];
  @override
  final String wireName = 'OtherDirective';

  @override
  Iterable<Object> serialize(Serializers serializers, OtherDirective object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'firstLine',
      serializers.serialize(object.firstLine,
          specifiedType: const FullType(int)),
      'lastLine',
      serializers.serialize(object.lastLine,
          specifiedType: const FullType(int)),
      'other',
      serializers.serialize(object.other,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  OtherDirective deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OtherDirectiveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'firstLine':
          result.firstLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lastLine':
          result.lastLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'other':
          result.other = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionSerializer implements StructuredSerializer<Transaction> {
  @override
  final Iterable<Type> types = const [Transaction, _$Transaction];
  @override
  final String wireName = 'Transaction';

  @override
  Iterable<Object> serialize(Serializers serializers, Transaction object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'firstLine',
      serializers.serialize(object.firstLine,
          specifiedType: const FullType(int)),
      'lastLine',
      serializers.serialize(object.lastLine,
          specifiedType: const FullType(int)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'postings',
      serializers.serialize(object.postings,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Posting)])),
    ];

    return result;
  }

  @override
  Transaction deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'firstLine':
          result.firstLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lastLine':
          result.lastLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'postings':
          result.postings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Posting)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$PostingSerializer implements StructuredSerializer<Posting> {
  @override
  final Iterable<Type> types = const [Posting, _$Posting];
  @override
  final String wireName = 'Posting';

  @override
  Iterable<Object> serialize(Serializers serializers, Posting object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(int)),
      'account',
      serializers.serialize(object.account,
          specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(Amount)),
    ];

    return result;
  }

  @override
  Posting deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'account':
          result.account = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount.replace(serializers.deserialize(value,
              specifiedType: const FullType(Amount)) as Amount);
          break;
      }
    }

    return result.build();
  }
}

class _$AmountSerializer implements StructuredSerializer<Amount> {
  @override
  final Iterable<Type> types = const [Amount, _$Amount];
  @override
  final String wireName = 'Amount';

  @override
  Iterable<Object> serialize(Serializers serializers, Amount object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'commodity',
      serializers.serialize(object.commodity,
          specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.commodityOnLeft;
    if (value != null) {
      result
        ..add('commodityOnLeft')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.spacing;
    if (value != null) {
      result
        ..add('spacing')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Amount deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AmountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'commodity':
          result.commodity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commodityOnLeft':
          result.commodityOnLeft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'spacing':
          result.spacing = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Journal extends Journal {
  @override
  final BuiltList<JournalItem> journalItems;

  factory _$Journal([void Function(JournalBuilder) updates]) =>
      (new JournalBuilder()..update(updates)).build();

  _$Journal._({this.journalItems}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        journalItems, 'Journal', 'journalItems');
  }

  @override
  Journal rebuild(void Function(JournalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JournalBuilder toBuilder() => new JournalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Journal && journalItems == other.journalItems;
  }

  @override
  int get hashCode {
    return $jf($jc(0, journalItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Journal')
          ..add('journalItems', journalItems))
        .toString();
  }
}

class JournalBuilder implements Builder<Journal, JournalBuilder> {
  _$Journal _$v;

  ListBuilder<JournalItem> _journalItems;
  ListBuilder<JournalItem> get journalItems =>
      _$this._journalItems ??= new ListBuilder<JournalItem>();
  set journalItems(ListBuilder<JournalItem> journalItems) =>
      _$this._journalItems = journalItems;

  JournalBuilder();

  JournalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _journalItems = $v.journalItems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Journal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Journal;
  }

  @override
  void update(void Function(JournalBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Journal build() {
    _$Journal _$result;
    try {
      _$result = _$v ?? new _$Journal._(journalItems: journalItems.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'journalItems';
        journalItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Journal', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Comment extends Comment {
  @override
  final int firstLine;
  @override
  final int lastLine;
  @override
  final String comment;

  factory _$Comment([void Function(CommentBuilder) updates]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._({this.firstLine, this.lastLine, this.comment}) : super._() {
    BuiltValueNullFieldError.checkNotNull(firstLine, 'Comment', 'firstLine');
    BuiltValueNullFieldError.checkNotNull(lastLine, 'Comment', 'lastLine');
    BuiltValueNullFieldError.checkNotNull(comment, 'Comment', 'comment');
  }

  @override
  Comment rebuild(void Function(CommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        firstLine == other.firstLine &&
        lastLine == other.lastLine &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, firstLine.hashCode), lastLine.hashCode), comment.hashCode));
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  int _firstLine;
  int get firstLine => _$this._firstLine;
  set firstLine(int firstLine) => _$this._firstLine = firstLine;

  int _lastLine;
  int get lastLine => _$this._lastLine;
  set lastLine(int lastLine) => _$this._lastLine = lastLine;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  CommentBuilder();

  CommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstLine = $v.firstLine;
      _lastLine = $v.lastLine;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Comment;
  }

  @override
  void update(void Function(CommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    final _$result = _$v ??
        new _$Comment._(
            firstLine: BuiltValueNullFieldError.checkNotNull(
                firstLine, 'Comment', 'firstLine'),
            lastLine: BuiltValueNullFieldError.checkNotNull(
                lastLine, 'Comment', 'lastLine'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, 'Comment', 'comment'));
    replace(_$result);
    return _$result;
  }
}

class _$AccountDirective extends AccountDirective {
  @override
  final int firstLine;
  @override
  final int lastLine;
  @override
  final String account;

  factory _$AccountDirective(
          [void Function(AccountDirectiveBuilder) updates]) =>
      (new AccountDirectiveBuilder()..update(updates)).build();

  _$AccountDirective._({this.firstLine, this.lastLine, this.account})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstLine, 'AccountDirective', 'firstLine');
    BuiltValueNullFieldError.checkNotNull(
        lastLine, 'AccountDirective', 'lastLine');
    BuiltValueNullFieldError.checkNotNull(
        account, 'AccountDirective', 'account');
  }

  @override
  AccountDirective rebuild(void Function(AccountDirectiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountDirectiveBuilder toBuilder() =>
      new AccountDirectiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountDirective &&
        firstLine == other.firstLine &&
        lastLine == other.lastLine &&
        account == other.account;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, firstLine.hashCode), lastLine.hashCode), account.hashCode));
  }
}

class AccountDirectiveBuilder
    implements Builder<AccountDirective, AccountDirectiveBuilder> {
  _$AccountDirective _$v;

  int _firstLine;
  int get firstLine => _$this._firstLine;
  set firstLine(int firstLine) => _$this._firstLine = firstLine;

  int _lastLine;
  int get lastLine => _$this._lastLine;
  set lastLine(int lastLine) => _$this._lastLine = lastLine;

  String _account;
  String get account => _$this._account;
  set account(String account) => _$this._account = account;

  AccountDirectiveBuilder();

  AccountDirectiveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstLine = $v.firstLine;
      _lastLine = $v.lastLine;
      _account = $v.account;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountDirective other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountDirective;
  }

  @override
  void update(void Function(AccountDirectiveBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountDirective build() {
    final _$result = _$v ??
        new _$AccountDirective._(
            firstLine: BuiltValueNullFieldError.checkNotNull(
                firstLine, 'AccountDirective', 'firstLine'),
            lastLine: BuiltValueNullFieldError.checkNotNull(
                lastLine, 'AccountDirective', 'lastLine'),
            account: BuiltValueNullFieldError.checkNotNull(
                account, 'AccountDirective', 'account'));
    replace(_$result);
    return _$result;
  }
}

class _$CommodityDirective extends CommodityDirective {
  @override
  final int firstLine;
  @override
  final int lastLine;
  @override
  final String commodity;

  factory _$CommodityDirective(
          [void Function(CommodityDirectiveBuilder) updates]) =>
      (new CommodityDirectiveBuilder()..update(updates)).build();

  _$CommodityDirective._({this.firstLine, this.lastLine, this.commodity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstLine, 'CommodityDirective', 'firstLine');
    BuiltValueNullFieldError.checkNotNull(
        lastLine, 'CommodityDirective', 'lastLine');
    BuiltValueNullFieldError.checkNotNull(
        commodity, 'CommodityDirective', 'commodity');
  }

  @override
  CommodityDirective rebuild(
          void Function(CommodityDirectiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommodityDirectiveBuilder toBuilder() =>
      new CommodityDirectiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommodityDirective &&
        firstLine == other.firstLine &&
        lastLine == other.lastLine &&
        commodity == other.commodity;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, firstLine.hashCode), lastLine.hashCode),
        commodity.hashCode));
  }
}

class CommodityDirectiveBuilder
    implements Builder<CommodityDirective, CommodityDirectiveBuilder> {
  _$CommodityDirective _$v;

  int _firstLine;
  int get firstLine => _$this._firstLine;
  set firstLine(int firstLine) => _$this._firstLine = firstLine;

  int _lastLine;
  int get lastLine => _$this._lastLine;
  set lastLine(int lastLine) => _$this._lastLine = lastLine;

  String _commodity;
  String get commodity => _$this._commodity;
  set commodity(String commodity) => _$this._commodity = commodity;

  CommodityDirectiveBuilder();

  CommodityDirectiveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstLine = $v.firstLine;
      _lastLine = $v.lastLine;
      _commodity = $v.commodity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommodityDirective other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommodityDirective;
  }

  @override
  void update(void Function(CommodityDirectiveBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommodityDirective build() {
    final _$result = _$v ??
        new _$CommodityDirective._(
            firstLine: BuiltValueNullFieldError.checkNotNull(
                firstLine, 'CommodityDirective', 'firstLine'),
            lastLine: BuiltValueNullFieldError.checkNotNull(
                lastLine, 'CommodityDirective', 'lastLine'),
            commodity: BuiltValueNullFieldError.checkNotNull(
                commodity, 'CommodityDirective', 'commodity'));
    replace(_$result);
    return _$result;
  }
}

class _$OtherDirective extends OtherDirective {
  @override
  final int firstLine;
  @override
  final int lastLine;
  @override
  final String other;

  factory _$OtherDirective([void Function(OtherDirectiveBuilder) updates]) =>
      (new OtherDirectiveBuilder()..update(updates)).build();

  _$OtherDirective._({this.firstLine, this.lastLine, this.other}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstLine, 'OtherDirective', 'firstLine');
    BuiltValueNullFieldError.checkNotNull(
        lastLine, 'OtherDirective', 'lastLine');
    BuiltValueNullFieldError.checkNotNull(other, 'OtherDirective', 'other');
  }

  @override
  OtherDirective rebuild(void Function(OtherDirectiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OtherDirectiveBuilder toBuilder() =>
      new OtherDirectiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OtherDirective &&
        firstLine == other.firstLine &&
        lastLine == other.lastLine &&
        this.other == other.other;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, firstLine.hashCode), lastLine.hashCode), other.hashCode));
  }
}

class OtherDirectiveBuilder
    implements Builder<OtherDirective, OtherDirectiveBuilder> {
  _$OtherDirective _$v;

  int _firstLine;
  int get firstLine => _$this._firstLine;
  set firstLine(int firstLine) => _$this._firstLine = firstLine;

  int _lastLine;
  int get lastLine => _$this._lastLine;
  set lastLine(int lastLine) => _$this._lastLine = lastLine;

  String _other;
  String get other => _$this._other;
  set other(String other) => _$this._other = other;

  OtherDirectiveBuilder();

  OtherDirectiveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstLine = $v.firstLine;
      _lastLine = $v.lastLine;
      _other = $v.other;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtherDirective other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OtherDirective;
  }

  @override
  void update(void Function(OtherDirectiveBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OtherDirective build() {
    final _$result = _$v ??
        new _$OtherDirective._(
            firstLine: BuiltValueNullFieldError.checkNotNull(
                firstLine, 'OtherDirective', 'firstLine'),
            lastLine: BuiltValueNullFieldError.checkNotNull(
                lastLine, 'OtherDirective', 'lastLine'),
            other: BuiltValueNullFieldError.checkNotNull(
                other, 'OtherDirective', 'other'));
    replace(_$result);
    return _$result;
  }
}

class _$Transaction extends Transaction {
  @override
  final int firstLine;
  @override
  final int lastLine;
  @override
  final String date;
  @override
  final String description;
  @override
  final BuiltList<Posting> postings;

  factory _$Transaction([void Function(TransactionBuilder) updates]) =>
      (new TransactionBuilder()..update(updates)).build();

  _$Transaction._(
      {this.firstLine,
      this.lastLine,
      this.date,
      this.description,
      this.postings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstLine, 'Transaction', 'firstLine');
    BuiltValueNullFieldError.checkNotNull(lastLine, 'Transaction', 'lastLine');
    BuiltValueNullFieldError.checkNotNull(date, 'Transaction', 'date');
    BuiltValueNullFieldError.checkNotNull(
        description, 'Transaction', 'description');
    BuiltValueNullFieldError.checkNotNull(postings, 'Transaction', 'postings');
  }

  @override
  Transaction rebuild(void Function(TransactionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionBuilder toBuilder() => new TransactionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Transaction &&
        firstLine == other.firstLine &&
        lastLine == other.lastLine &&
        date == other.date &&
        description == other.description &&
        postings == other.postings;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, firstLine.hashCode), lastLine.hashCode),
                date.hashCode),
            description.hashCode),
        postings.hashCode));
  }
}

class TransactionBuilder implements Builder<Transaction, TransactionBuilder> {
  _$Transaction _$v;

  int _firstLine;
  int get firstLine => _$this._firstLine;
  set firstLine(int firstLine) => _$this._firstLine = firstLine;

  int _lastLine;
  int get lastLine => _$this._lastLine;
  set lastLine(int lastLine) => _$this._lastLine = lastLine;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<Posting> _postings;
  ListBuilder<Posting> get postings =>
      _$this._postings ??= new ListBuilder<Posting>();
  set postings(ListBuilder<Posting> postings) => _$this._postings = postings;

  TransactionBuilder() {
    Transaction._initializeBuilder(this);
  }

  TransactionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstLine = $v.firstLine;
      _lastLine = $v.lastLine;
      _date = $v.date;
      _description = $v.description;
      _postings = $v.postings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Transaction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Transaction;
  }

  @override
  void update(void Function(TransactionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Transaction build() {
    _$Transaction _$result;
    try {
      _$result = _$v ??
          new _$Transaction._(
              firstLine: BuiltValueNullFieldError.checkNotNull(
                  firstLine, 'Transaction', 'firstLine'),
              lastLine: BuiltValueNullFieldError.checkNotNull(
                  lastLine, 'Transaction', 'lastLine'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, 'Transaction', 'date'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'Transaction', 'description'),
              postings: postings.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'postings';
        postings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Transaction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Posting extends Posting {
  @override
  final int key;
  @override
  final String account;
  @override
  final Amount amount;

  factory _$Posting([void Function(PostingBuilder) updates]) =>
      (new PostingBuilder()..update(updates)).build();

  _$Posting._({this.key, this.account, this.amount}) : super._() {
    BuiltValueNullFieldError.checkNotNull(key, 'Posting', 'key');
    BuiltValueNullFieldError.checkNotNull(account, 'Posting', 'account');
    BuiltValueNullFieldError.checkNotNull(amount, 'Posting', 'amount');
  }

  @override
  Posting rebuild(void Function(PostingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostingBuilder toBuilder() => new PostingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Posting &&
        key == other.key &&
        account == other.account &&
        amount == other.amount;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, key.hashCode), account.hashCode), amount.hashCode));
  }
}

class PostingBuilder implements Builder<Posting, PostingBuilder> {
  _$Posting _$v;

  int _key;
  int get key => _$this._key;
  set key(int key) => _$this._key = key;

  String _account;
  String get account => _$this._account;
  set account(String account) => _$this._account = account;

  AmountBuilder _amount;
  AmountBuilder get amount => _$this._amount ??= new AmountBuilder();
  set amount(AmountBuilder amount) => _$this._amount = amount;

  PostingBuilder() {
    Posting._initializeBuilder(this);
  }

  PostingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _account = $v.account;
      _amount = $v.amount.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Posting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Posting;
  }

  @override
  void update(void Function(PostingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Posting build() {
    _$Posting _$result;
    try {
      _$result = _$v ??
          new _$Posting._(
              key: BuiltValueNullFieldError.checkNotNull(key, 'Posting', 'key'),
              account: BuiltValueNullFieldError.checkNotNull(
                  account, 'Posting', 'account'),
              amount: amount.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'amount';
        amount.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Posting', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Amount extends Amount {
  @override
  final String commodity;
  @override
  final String quantity;
  @override
  final bool commodityOnLeft;
  @override
  final int spacing;

  factory _$Amount([void Function(AmountBuilder) updates]) =>
      (new AmountBuilder()..update(updates)).build();

  _$Amount._(
      {this.commodity, this.quantity, this.commodityOnLeft, this.spacing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(commodity, 'Amount', 'commodity');
    BuiltValueNullFieldError.checkNotNull(quantity, 'Amount', 'quantity');
  }

  @override
  Amount rebuild(void Function(AmountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AmountBuilder toBuilder() => new AmountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Amount &&
        commodity == other.commodity &&
        quantity == other.quantity &&
        commodityOnLeft == other.commodityOnLeft &&
        spacing == other.spacing;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, commodity.hashCode), quantity.hashCode),
            commodityOnLeft.hashCode),
        spacing.hashCode));
  }
}

class AmountBuilder implements Builder<Amount, AmountBuilder> {
  _$Amount _$v;

  String _commodity;
  String get commodity => _$this._commodity;
  set commodity(String commodity) => _$this._commodity = commodity;

  String _quantity;
  String get quantity => _$this._quantity;
  set quantity(String quantity) => _$this._quantity = quantity;

  bool _commodityOnLeft;
  bool get commodityOnLeft => _$this._commodityOnLeft;
  set commodityOnLeft(bool commodityOnLeft) =>
      _$this._commodityOnLeft = commodityOnLeft;

  int _spacing;
  int get spacing => _$this._spacing;
  set spacing(int spacing) => _$this._spacing = spacing;

  AmountBuilder() {
    Amount._initializeBuilder(this);
  }

  AmountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commodity = $v.commodity;
      _quantity = $v.quantity;
      _commodityOnLeft = $v.commodityOnLeft;
      _spacing = $v.spacing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Amount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Amount;
  }

  @override
  void update(void Function(AmountBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Amount build() {
    final _$result = _$v ??
        new _$Amount._(
            commodity: BuiltValueNullFieldError.checkNotNull(
                commodity, 'Amount', 'commodity'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, 'Amount', 'quantity'),
            commodityOnLeft: commodityOnLeft,
            spacing: spacing);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
