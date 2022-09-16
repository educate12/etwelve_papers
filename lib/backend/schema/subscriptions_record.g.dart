// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscriptions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubscriptionsRecord> _$subscriptionsRecordSerializer =
    new _$SubscriptionsRecordSerializer();

class _$SubscriptionsRecordSerializer
    implements StructuredSerializer<SubscriptionsRecord> {
  @override
  final Iterable<Type> types = const [
    SubscriptionsRecord,
    _$SubscriptionsRecord
  ];
  @override
  final String wireName = 'SubscriptionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SubscriptionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.period;
    if (value != null) {
      result
        ..add('period')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.app;
    if (value != null) {
      result
        ..add('app')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  SubscriptionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubscriptionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'period':
          result.period = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'app':
          result.app = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$SubscriptionsRecord extends SubscriptionsRecord {
  @override
  final String? period;
  @override
  final String? description;
  @override
  final String? app;
  @override
  final double? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SubscriptionsRecord(
          [void Function(SubscriptionsRecordBuilder)? updates]) =>
      (new SubscriptionsRecordBuilder()..update(updates))._build();

  _$SubscriptionsRecord._(
      {this.period, this.description, this.app, this.price, this.ffRef})
      : super._();

  @override
  SubscriptionsRecord rebuild(
          void Function(SubscriptionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionsRecordBuilder toBuilder() =>
      new SubscriptionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionsRecord &&
        period == other.period &&
        description == other.description &&
        app == other.app &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, period.hashCode), description.hashCode),
                app.hashCode),
            price.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionsRecord')
          ..add('period', period)
          ..add('description', description)
          ..add('app', app)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SubscriptionsRecordBuilder
    implements Builder<SubscriptionsRecord, SubscriptionsRecordBuilder> {
  _$SubscriptionsRecord? _$v;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SubscriptionsRecordBuilder() {
    SubscriptionsRecord._initializeBuilder(this);
  }

  SubscriptionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period;
      _description = $v.description;
      _app = $v.app;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubscriptionsRecord;
  }

  @override
  void update(void Function(SubscriptionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionsRecord build() => _build();

  _$SubscriptionsRecord _build() {
    final _$result = _$v ??
        new _$SubscriptionsRecord._(
            period: period,
            description: description,
            app: app,
            price: price,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
