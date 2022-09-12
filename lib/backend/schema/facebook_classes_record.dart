import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'facebook_classes_record.g.dart';

abstract class FacebookClassesRecord
    implements Built<FacebookClassesRecord, FacebookClassesRecordBuilder> {
  static Serializer<FacebookClassesRecord> get serializer =>
      _$facebookClassesRecordSerializer;

  String? get subject;

  int? get grade;

  String? get topic;

  @BuiltValueField(wireName: 'date_time')
  DateTime? get dateTime;

  @BuiltValueField(wireName: 'end_date_time')
  DateTime? get endDateTime;

  BuiltList<DocumentReference>? get participants;

  String? get tutor;

  String? get link;

  bool? get completed;

  @BuiltValueField(wireName: 'class_subject')
  DocumentReference? get classSubject;

  @BuiltValueField(wireName: 'class_tutor')
  DocumentReference? get classTutor;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FacebookClassesRecordBuilder builder) =>
      builder
        ..subject = ''
        ..grade = 0
        ..topic = ''
        ..participants = ListBuilder()
        ..tutor = ''
        ..link = ''
        ..completed = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('facebookClasses');

  static Stream<FacebookClassesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FacebookClassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FacebookClassesRecord._();
  factory FacebookClassesRecord(
          [void Function(FacebookClassesRecordBuilder) updates]) =
      _$FacebookClassesRecord;

  static FacebookClassesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFacebookClassesRecordData({
  String? subject,
  int? grade,
  String? topic,
  DateTime? dateTime,
  DateTime? endDateTime,
  String? tutor,
  String? link,
  bool? completed,
  DocumentReference? classSubject,
  DocumentReference? classTutor,
}) {
  final firestoreData = serializers.toFirestore(
    FacebookClassesRecord.serializer,
    FacebookClassesRecord(
      (f) => f
        ..subject = subject
        ..grade = grade
        ..topic = topic
        ..dateTime = dateTime
        ..endDateTime = endDateTime
        ..participants = null
        ..tutor = tutor
        ..link = link
        ..completed = completed
        ..classSubject = classSubject
        ..classTutor = classTutor,
    ),
  );

  return firestoreData;
}
