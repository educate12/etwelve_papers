import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'stationary_record.g.dart';

abstract class StationaryRecord
    implements Built<StationaryRecord, StationaryRecordBuilder> {
  static Serializer<StationaryRecord> get serializer =>
      _$stationaryRecordSerializer;

  @BuiltValueField(wireName: 'item_name')
  String? get itemName;

  @BuiltValueField(wireName: 'item_description')
  String? get itemDescription;

  String? get picture;

  int? get quantity;

  double? get price;

  String? get specifications;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StationaryRecordBuilder builder) => builder
    ..itemName = ''
    ..itemDescription = ''
    ..picture = ''
    ..quantity = 0
    ..price = 0.0
    ..specifications = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stationary');

  static Stream<StationaryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StationaryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StationaryRecord._();
  factory StationaryRecord([void Function(StationaryRecordBuilder) updates]) =
      _$StationaryRecord;

  static StationaryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStationaryRecordData({
  String? itemName,
  String? itemDescription,
  String? picture,
  int? quantity,
  double? price,
  String? specifications,
}) {
  final firestoreData = serializers.toFirestore(
    StationaryRecord.serializer,
    StationaryRecord(
      (s) => s
        ..itemName = itemName
        ..itemDescription = itemDescription
        ..picture = picture
        ..quantity = quantity
        ..price = price
        ..specifications = specifications,
    ),
  );

  return firestoreData;
}
