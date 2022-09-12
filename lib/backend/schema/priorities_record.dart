import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'priorities_record.g.dart';

abstract class PrioritiesRecord
    implements Built<PrioritiesRecord, PrioritiesRecordBuilder> {
  static Serializer<PrioritiesRecord> get serializer =>
      _$prioritiesRecordSerializer;

  String? get title;

  String? get description;

  @BuiltValueField(wireName: 'created_date')
  DateTime? get createdDate;

  @BuiltValueField(wireName: 'completed_date')
  DateTime? get completedDate;

  @BuiltValueField(wireName: 'in_progress')
  bool? get inProgress;

  bool? get completed;

  bool? get deleted;

  String? get work;

  BuiltList<DocumentReference>? get owners;

  @BuiltValueField(wireName: 'due_date')
  DateTime? get dueDate;

  int? get level;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PrioritiesRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..inProgress = false
    ..completed = false
    ..deleted = false
    ..work = ''
    ..owners = ListBuilder()
    ..level = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('priorities');

  static Stream<PrioritiesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PrioritiesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PrioritiesRecord._();
  factory PrioritiesRecord([void Function(PrioritiesRecordBuilder) updates]) =
      _$PrioritiesRecord;

  static PrioritiesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPrioritiesRecordData({
  String? title,
  String? description,
  DateTime? createdDate,
  DateTime? completedDate,
  bool? inProgress,
  bool? completed,
  bool? deleted,
  String? work,
  DateTime? dueDate,
  int? level,
}) {
  final firestoreData = serializers.toFirestore(
    PrioritiesRecord.serializer,
    PrioritiesRecord(
      (p) => p
        ..title = title
        ..description = description
        ..createdDate = createdDate
        ..completedDate = completedDate
        ..inProgress = inProgress
        ..completed = completed
        ..deleted = deleted
        ..work = work
        ..owners = null
        ..dueDate = dueDate
        ..level = level,
    ),
  );

  return firestoreData;
}
