// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stationary_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StationaryRecord> _$stationaryRecordSerializer =
    new _$StationaryRecordSerializer();

class _$StationaryRecordSerializer
    implements StructuredSerializer<StationaryRecord> {
  @override
  final Iterable<Type> types = const [StationaryRecord, _$StationaryRecord];
  @override
  final String wireName = 'StationaryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StationaryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.itemName;
    if (value != null) {
      result
        ..add('item_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemDescription;
    if (value != null) {
      result
        ..add('item_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.specifications;
    if (value != null) {
      result
        ..add('specifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  StationaryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StationaryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'item_name':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'item_description':
          result.itemDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'specifications':
          result.specifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$StationaryRecord extends StationaryRecord {
  @override
  final String? itemName;
  @override
  final String? itemDescription;
  @override
  final String? picture;
  @override
  final int? quantity;
  @override
  final double? price;
  @override
  final String? specifications;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StationaryRecord(
          [void Function(StationaryRecordBuilder)? updates]) =>
      (new StationaryRecordBuilder()..update(updates))._build();

  _$StationaryRecord._(
      {this.itemName,
      this.itemDescription,
      this.picture,
      this.quantity,
      this.price,
      this.specifications,
      this.ffRef})
      : super._();

  @override
  StationaryRecord rebuild(void Function(StationaryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StationaryRecordBuilder toBuilder() =>
      new StationaryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StationaryRecord &&
        itemName == other.itemName &&
        itemDescription == other.itemDescription &&
        picture == other.picture &&
        quantity == other.quantity &&
        price == other.price &&
        specifications == other.specifications &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, itemName.hashCode),
                            itemDescription.hashCode),
                        picture.hashCode),
                    quantity.hashCode),
                price.hashCode),
            specifications.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StationaryRecord')
          ..add('itemName', itemName)
          ..add('itemDescription', itemDescription)
          ..add('picture', picture)
          ..add('quantity', quantity)
          ..add('price', price)
          ..add('specifications', specifications)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StationaryRecordBuilder
    implements Builder<StationaryRecord, StationaryRecordBuilder> {
  _$StationaryRecord? _$v;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  String? _itemDescription;
  String? get itemDescription => _$this._itemDescription;
  set itemDescription(String? itemDescription) =>
      _$this._itemDescription = itemDescription;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _specifications;
  String? get specifications => _$this._specifications;
  set specifications(String? specifications) =>
      _$this._specifications = specifications;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StationaryRecordBuilder() {
    StationaryRecord._initializeBuilder(this);
  }

  StationaryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemName = $v.itemName;
      _itemDescription = $v.itemDescription;
      _picture = $v.picture;
      _quantity = $v.quantity;
      _price = $v.price;
      _specifications = $v.specifications;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StationaryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StationaryRecord;
  }

  @override
  void update(void Function(StationaryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StationaryRecord build() => _build();

  _$StationaryRecord _build() {
    final _$result = _$v ??
        new _$StationaryRecord._(
            itemName: itemName,
            itemDescription: itemDescription,
            picture: picture,
            quantity: quantity,
            price: price,
            specifications: specifications,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
