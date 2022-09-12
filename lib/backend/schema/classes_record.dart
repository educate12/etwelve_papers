import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'classes_record.g.dart';

abstract class ClassesRecord
    implements Built<ClassesRecord, ClassesRecordBuilder> {
  static Serializer<ClassesRecord> get serializer => _$classesRecordSerializer;

  DocumentReference? get attendee;

  DocumentReference? get tutor;

  double? get price;

  @BuiltValueField(wireName: 'request_time')
  DateTime? get requestTime;

  @BuiltValueField(wireName: 'complete_time')
  DateTime? get completeTime;

  DocumentReference? get subject;

  String? get status;

  bool? get online;

  String? get topic;

  bool? get accepted;

  bool? get booked;

  @BuiltValueField(wireName: 'in_progress')
  bool? get inProgress;

  bool? get cancelled;

  @BuiltValueField(wireName: 'booking_in_progress')
  bool? get bookingInProgress;

  bool? get stage1;

  @BuiltValueField(wireName: 'student_rating')
  double? get studentRating;

  @BuiltValueField(wireName: 'tutor_rating')
  double? get tutorRating;

  int? get rating;

  String? get link;

  bool? get day2day;

  @BuiltValueField(wireName: 'class_length')
  double? get classLength;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  bool? get payClass;

  bool? get paid;

  @BuiltValueField(wireName: 'tutor_address')
  LatLng? get tutorAddress;

  @BuiltValueField(wireName: 'student_address')
  LatLng? get studentAddress;

  @BuiltValueField(wireName: 'tutor_name')
  String? get tutorName;

  @BuiltValueField(wireName: 'tutor_number')
  String? get tutorNumber;

  @BuiltValueField(wireName: 't_rating')
  double? get tRating;

  @BuiltValueField(wireName: 'tutor_picture')
  String? get tutorPicture;

  @BuiltValueField(wireName: 'student_name')
  String? get studentName;

  @BuiltValueField(wireName: 'student_number')
  String? get studentNumber;

  @BuiltValueField(wireName: 's_rating')
  double? get sRating;

  @BuiltValueField(wireName: 'student_picture')
  String? get studentPicture;

  @BuiltValueField(wireName: 'subject_name')
  String? get subjectName;

  @BuiltValueField(wireName: 'subject_code')
  String? get subjectCode;

  String? get course;

  bool? get completed;

  bool? get card;

  bool? get stage2;

  bool? get stage3;

  bool? get stage4;

  bool? get stage5;

  @BuiltValueField(wireName: 'location_picked')
  bool? get locationPicked;

  LatLng? get location;

  @BuiltValueField(wireName: 'cancelled_time')
  DateTime? get cancelledTime;

  bool? get unavailable;

  @BuiltValueField(wireName: 'tutor_location')
  LatLng? get tutorLocation;

  @BuiltValueField(wireName: 't_location_picked')
  bool? get tLocationPicked;

  DocumentReference? get admin;

  @BuiltValueField(wireName: 'added_number')
  int? get addedNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClassesRecordBuilder builder) => builder
    ..price = 0.0
    ..status = ''
    ..online = false
    ..topic = ''
    ..accepted = false
    ..booked = false
    ..inProgress = false
    ..cancelled = false
    ..bookingInProgress = false
    ..stage1 = false
    ..studentRating = 0.0
    ..tutorRating = 0.0
    ..rating = 0
    ..link = ''
    ..day2day = false
    ..classLength = 0.0
    ..payClass = false
    ..paid = false
    ..tutorName = ''
    ..tutorNumber = ''
    ..tRating = 0.0
    ..tutorPicture = ''
    ..studentName = ''
    ..studentNumber = ''
    ..sRating = 0.0
    ..studentPicture = ''
    ..subjectName = ''
    ..subjectCode = ''
    ..course = ''
    ..completed = false
    ..card = false
    ..stage2 = false
    ..stage3 = false
    ..stage4 = false
    ..stage5 = false
    ..locationPicked = false
    ..unavailable = false
    ..tLocationPicked = false
    ..addedNumber = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('classes');

  static Stream<ClassesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClassesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClassesRecord._();
  factory ClassesRecord([void Function(ClassesRecordBuilder) updates]) =
      _$ClassesRecord;

  static ClassesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClassesRecordData({
  DocumentReference? attendee,
  DocumentReference? tutor,
  double? price,
  DateTime? requestTime,
  DateTime? completeTime,
  DocumentReference? subject,
  String? status,
  bool? online,
  String? topic,
  bool? accepted,
  bool? booked,
  bool? inProgress,
  bool? cancelled,
  bool? bookingInProgress,
  bool? stage1,
  double? studentRating,
  double? tutorRating,
  int? rating,
  String? link,
  bool? day2day,
  double? classLength,
  DateTime? createdTime,
  bool? payClass,
  bool? paid,
  LatLng? tutorAddress,
  LatLng? studentAddress,
  String? tutorName,
  String? tutorNumber,
  double? tRating,
  String? tutorPicture,
  String? studentName,
  String? studentNumber,
  double? sRating,
  String? studentPicture,
  String? subjectName,
  String? subjectCode,
  String? course,
  bool? completed,
  bool? card,
  bool? stage2,
  bool? stage3,
  bool? stage4,
  bool? stage5,
  bool? locationPicked,
  LatLng? location,
  DateTime? cancelledTime,
  bool? unavailable,
  LatLng? tutorLocation,
  bool? tLocationPicked,
  DocumentReference? admin,
  int? addedNumber,
}) {
  final firestoreData = serializers.toFirestore(
    ClassesRecord.serializer,
    ClassesRecord(
      (c) => c
        ..attendee = attendee
        ..tutor = tutor
        ..price = price
        ..requestTime = requestTime
        ..completeTime = completeTime
        ..subject = subject
        ..status = status
        ..online = online
        ..topic = topic
        ..accepted = accepted
        ..booked = booked
        ..inProgress = inProgress
        ..cancelled = cancelled
        ..bookingInProgress = bookingInProgress
        ..stage1 = stage1
        ..studentRating = studentRating
        ..tutorRating = tutorRating
        ..rating = rating
        ..link = link
        ..day2day = day2day
        ..classLength = classLength
        ..createdTime = createdTime
        ..payClass = payClass
        ..paid = paid
        ..tutorAddress = tutorAddress
        ..studentAddress = studentAddress
        ..tutorName = tutorName
        ..tutorNumber = tutorNumber
        ..tRating = tRating
        ..tutorPicture = tutorPicture
        ..studentName = studentName
        ..studentNumber = studentNumber
        ..sRating = sRating
        ..studentPicture = studentPicture
        ..subjectName = subjectName
        ..subjectCode = subjectCode
        ..course = course
        ..completed = completed
        ..card = card
        ..stage2 = stage2
        ..stage3 = stage3
        ..stage4 = stage4
        ..stage5 = stage5
        ..locationPicked = locationPicked
        ..location = location
        ..cancelledTime = cancelledTime
        ..unavailable = unavailable
        ..tutorLocation = tutorLocation
        ..tLocationPicked = tLocationPicked
        ..admin = admin
        ..addedNumber = addedNumber,
    ),
  );

  return firestoreData;
}
