import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reporting_record.g.dart';

abstract class ReportingRecord
    implements Built<ReportingRecord, ReportingRecordBuilder> {
  static Serializer<ReportingRecord> get serializer =>
      _$reportingRecordSerializer;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'reported_user')
  DocumentReference? get reportedUser;

  @BuiltValueField(wireName: 'reported_video')
  DocumentReference? get reportedVideo;

  String? get description;

  @BuiltValueField(wireName: 'reporting_user')
  DocumentReference? get reportingUser;

  @BuiltValueField(wireName: 'reported_paper')
  DocumentReference? get reportedPaper;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReportingRecordBuilder builder) =>
      builder..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reporting');

  static Stream<ReportingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReportingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReportingRecord._();
  factory ReportingRecord([void Function(ReportingRecordBuilder) updates]) =
      _$ReportingRecord;

  static ReportingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReportingRecordData({
  DateTime? createdTime,
  DocumentReference? reportedUser,
  DocumentReference? reportedVideo,
  String? description,
  DocumentReference? reportingUser,
  DocumentReference? reportedPaper,
}) {
  final firestoreData = serializers.toFirestore(
    ReportingRecord.serializer,
    ReportingRecord(
      (r) => r
        ..createdTime = createdTime
        ..reportedUser = reportedUser
        ..reportedVideo = reportedVideo
        ..description = description
        ..reportingUser = reportingUser
        ..reportedPaper = reportedPaper,
    ),
  );

  return firestoreData;
}
