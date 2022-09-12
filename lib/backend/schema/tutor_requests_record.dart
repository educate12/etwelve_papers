import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tutor_requests_record.g.dart';

abstract class TutorRequestsRecord
    implements Built<TutorRequestsRecord, TutorRequestsRecordBuilder> {
  static Serializer<TutorRequestsRecord> get serializer =>
      _$tutorRequestsRecordSerializer;

  DocumentReference? get student;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get subjects;

  String? get messageType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TutorRequestsRecordBuilder builder) => builder
    ..subjects = ''
    ..messageType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tutorRequests');

  static Stream<TutorRequestsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TutorRequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TutorRequestsRecord._();
  factory TutorRequestsRecord(
          [void Function(TutorRequestsRecordBuilder) updates]) =
      _$TutorRequestsRecord;

  static TutorRequestsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTutorRequestsRecordData({
  DocumentReference? student,
  DateTime? createdTime,
  String? subjects,
  String? messageType,
}) {
  final firestoreData = serializers.toFirestore(
    TutorRequestsRecord.serializer,
    TutorRequestsRecord(
      (t) => t
        ..student = student
        ..createdTime = createdTime
        ..subjects = subjects
        ..messageType = messageType,
    ),
  );

  return firestoreData;
}
