import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'apps_record.g.dart';

abstract class AppsRecord implements Built<AppsRecord, AppsRecordBuilder> {
  static Serializer<AppsRecord> get serializer => _$appsRecordSerializer;

  String? get name;

  String? get privacyPolicy;

  String? get terms;

  String? get disclaimer;

  @BuiltValueField(wireName: 'app_description')
  String? get appDescription;

  @BuiltValueField(wireName: 'published_date')
  DateTime? get publishedDate;

  @BuiltValueField(wireName: 'app_store')
  bool? get appStore;

  @BuiltValueField(wireName: 'play_store')
  bool? get playStore;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AppsRecordBuilder builder) => builder
    ..name = ''
    ..privacyPolicy = ''
    ..terms = ''
    ..disclaimer = ''
    ..appDescription = ''
    ..appStore = false
    ..playStore = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('apps');

  static Stream<AppsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AppsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AppsRecord._();
  factory AppsRecord([void Function(AppsRecordBuilder) updates]) = _$AppsRecord;

  static AppsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAppsRecordData({
  String? name,
  String? privacyPolicy,
  String? terms,
  String? disclaimer,
  String? appDescription,
  DateTime? publishedDate,
  bool? appStore,
  bool? playStore,
}) {
  final firestoreData = serializers.toFirestore(
    AppsRecord.serializer,
    AppsRecord(
      (a) => a
        ..name = name
        ..privacyPolicy = privacyPolicy
        ..terms = terms
        ..disclaimer = disclaimer
        ..appDescription = appDescription
        ..publishedDate = publishedDate
        ..appStore = appStore
        ..playStore = playStore,
    ),
  );

  return firestoreData;
}
