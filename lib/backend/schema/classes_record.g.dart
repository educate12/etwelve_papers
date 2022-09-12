// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClassesRecord> _$classesRecordSerializer =
    new _$ClassesRecordSerializer();

class _$ClassesRecordSerializer implements StructuredSerializer<ClassesRecord> {
  @override
  final Iterable<Type> types = const [ClassesRecord, _$ClassesRecord];
  @override
  final String wireName = 'ClassesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClassesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.attendee;
    if (value != null) {
      result
        ..add('attendee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.tutor;
    if (value != null) {
      result
        ..add('tutor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.requestTime;
    if (value != null) {
      result
        ..add('request_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.completeTime;
    if (value != null) {
      result
        ..add('complete_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.subject;
    if (value != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.online;
    if (value != null) {
      result
        ..add('online')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.topic;
    if (value != null) {
      result
        ..add('topic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accepted;
    if (value != null) {
      result
        ..add('accepted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.booked;
    if (value != null) {
      result
        ..add('booked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.inProgress;
    if (value != null) {
      result
        ..add('in_progress')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cancelled;
    if (value != null) {
      result
        ..add('cancelled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.bookingInProgress;
    if (value != null) {
      result
        ..add('booking_in_progress')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stage1;
    if (value != null) {
      result
        ..add('stage1')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.studentRating;
    if (value != null) {
      result
        ..add('student_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tutorRating;
    if (value != null) {
      result
        ..add('tutor_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.day2day;
    if (value != null) {
      result
        ..add('day2day')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.classLength;
    if (value != null) {
      result
        ..add('class_length')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.payClass;
    if (value != null) {
      result
        ..add('payClass')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.paid;
    if (value != null) {
      result
        ..add('paid')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.tutorAddress;
    if (value != null) {
      result
        ..add('tutor_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.studentAddress;
    if (value != null) {
      result
        ..add('student_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.tutorName;
    if (value != null) {
      result
        ..add('tutor_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tutorNumber;
    if (value != null) {
      result
        ..add('tutor_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tRating;
    if (value != null) {
      result
        ..add('t_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tutorPicture;
    if (value != null) {
      result
        ..add('tutor_picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.studentName;
    if (value != null) {
      result
        ..add('student_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.studentNumber;
    if (value != null) {
      result
        ..add('student_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sRating;
    if (value != null) {
      result
        ..add('s_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.studentPicture;
    if (value != null) {
      result
        ..add('student_picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subjectName;
    if (value != null) {
      result
        ..add('subject_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subjectCode;
    if (value != null) {
      result
        ..add('subject_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.course;
    if (value != null) {
      result
        ..add('course')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.completed;
    if (value != null) {
      result
        ..add('completed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.card;
    if (value != null) {
      result
        ..add('card')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stage2;
    if (value != null) {
      result
        ..add('stage2')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stage3;
    if (value != null) {
      result
        ..add('stage3')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stage4;
    if (value != null) {
      result
        ..add('stage4')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stage5;
    if (value != null) {
      result
        ..add('stage5')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.locationPicked;
    if (value != null) {
      result
        ..add('location_picked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.cancelledTime;
    if (value != null) {
      result
        ..add('cancelled_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.unavailable;
    if (value != null) {
      result
        ..add('unavailable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.tutorLocation;
    if (value != null) {
      result
        ..add('tutor_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.tLocationPicked;
    if (value != null) {
      result
        ..add('t_location_picked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.admin;
    if (value != null) {
      result
        ..add('admin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.addedNumber;
    if (value != null) {
      result
        ..add('added_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ClassesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClassesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'attendee':
          result.attendee = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'tutor':
          result.tutor = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'request_time':
          result.requestTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'complete_time':
          result.completeTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'online':
          result.online = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'topic':
          result.topic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accepted':
          result.accepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'booked':
          result.booked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'in_progress':
          result.inProgress = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'cancelled':
          result.cancelled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'booking_in_progress':
          result.bookingInProgress = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'stage1':
          result.stage1 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'student_rating':
          result.studentRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tutor_rating':
          result.tutorRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'day2day':
          result.day2day = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'class_length':
          result.classLength = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'payClass':
          result.payClass = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'paid':
          result.paid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'tutor_address':
          result.tutorAddress = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'student_address':
          result.studentAddress = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'tutor_name':
          result.tutorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tutor_number':
          result.tutorNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 't_rating':
          result.tRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tutor_picture':
          result.tutorPicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'student_name':
          result.studentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'student_number':
          result.studentNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 's_rating':
          result.sRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'student_picture':
          result.studentPicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subject_name':
          result.subjectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subject_code':
          result.subjectCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'course':
          result.course = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'completed':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'card':
          result.card = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'stage2':
          result.stage2 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'stage3':
          result.stage3 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'stage4':
          result.stage4 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'stage5':
          result.stage5 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'location_picked':
          result.locationPicked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'cancelled_time':
          result.cancelledTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'unavailable':
          result.unavailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'tutor_location':
          result.tutorLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 't_location_picked':
          result.tLocationPicked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'added_number':
          result.addedNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ClassesRecord extends ClassesRecord {
  @override
  final DocumentReference<Object?>? attendee;
  @override
  final DocumentReference<Object?>? tutor;
  @override
  final double? price;
  @override
  final DateTime? requestTime;
  @override
  final DateTime? completeTime;
  @override
  final DocumentReference<Object?>? subject;
  @override
  final String? status;
  @override
  final bool? online;
  @override
  final String? topic;
  @override
  final bool? accepted;
  @override
  final bool? booked;
  @override
  final bool? inProgress;
  @override
  final bool? cancelled;
  @override
  final bool? bookingInProgress;
  @override
  final bool? stage1;
  @override
  final double? studentRating;
  @override
  final double? tutorRating;
  @override
  final int? rating;
  @override
  final String? link;
  @override
  final bool? day2day;
  @override
  final double? classLength;
  @override
  final DateTime? createdTime;
  @override
  final bool? payClass;
  @override
  final bool? paid;
  @override
  final LatLng? tutorAddress;
  @override
  final LatLng? studentAddress;
  @override
  final String? tutorName;
  @override
  final String? tutorNumber;
  @override
  final double? tRating;
  @override
  final String? tutorPicture;
  @override
  final String? studentName;
  @override
  final String? studentNumber;
  @override
  final double? sRating;
  @override
  final String? studentPicture;
  @override
  final String? subjectName;
  @override
  final String? subjectCode;
  @override
  final String? course;
  @override
  final bool? completed;
  @override
  final bool? card;
  @override
  final bool? stage2;
  @override
  final bool? stage3;
  @override
  final bool? stage4;
  @override
  final bool? stage5;
  @override
  final bool? locationPicked;
  @override
  final LatLng? location;
  @override
  final DateTime? cancelledTime;
  @override
  final bool? unavailable;
  @override
  final LatLng? tutorLocation;
  @override
  final bool? tLocationPicked;
  @override
  final DocumentReference<Object?>? admin;
  @override
  final int? addedNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClassesRecord([void Function(ClassesRecordBuilder)? updates]) =>
      (new ClassesRecordBuilder()..update(updates))._build();

  _$ClassesRecord._(
      {this.attendee,
      this.tutor,
      this.price,
      this.requestTime,
      this.completeTime,
      this.subject,
      this.status,
      this.online,
      this.topic,
      this.accepted,
      this.booked,
      this.inProgress,
      this.cancelled,
      this.bookingInProgress,
      this.stage1,
      this.studentRating,
      this.tutorRating,
      this.rating,
      this.link,
      this.day2day,
      this.classLength,
      this.createdTime,
      this.payClass,
      this.paid,
      this.tutorAddress,
      this.studentAddress,
      this.tutorName,
      this.tutorNumber,
      this.tRating,
      this.tutorPicture,
      this.studentName,
      this.studentNumber,
      this.sRating,
      this.studentPicture,
      this.subjectName,
      this.subjectCode,
      this.course,
      this.completed,
      this.card,
      this.stage2,
      this.stage3,
      this.stage4,
      this.stage5,
      this.locationPicked,
      this.location,
      this.cancelledTime,
      this.unavailable,
      this.tutorLocation,
      this.tLocationPicked,
      this.admin,
      this.addedNumber,
      this.ffRef})
      : super._();

  @override
  ClassesRecord rebuild(void Function(ClassesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassesRecordBuilder toBuilder() => new ClassesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassesRecord &&
        attendee == other.attendee &&
        tutor == other.tutor &&
        price == other.price &&
        requestTime == other.requestTime &&
        completeTime == other.completeTime &&
        subject == other.subject &&
        status == other.status &&
        online == other.online &&
        topic == other.topic &&
        accepted == other.accepted &&
        booked == other.booked &&
        inProgress == other.inProgress &&
        cancelled == other.cancelled &&
        bookingInProgress == other.bookingInProgress &&
        stage1 == other.stage1 &&
        studentRating == other.studentRating &&
        tutorRating == other.tutorRating &&
        rating == other.rating &&
        link == other.link &&
        day2day == other.day2day &&
        classLength == other.classLength &&
        createdTime == other.createdTime &&
        payClass == other.payClass &&
        paid == other.paid &&
        tutorAddress == other.tutorAddress &&
        studentAddress == other.studentAddress &&
        tutorName == other.tutorName &&
        tutorNumber == other.tutorNumber &&
        tRating == other.tRating &&
        tutorPicture == other.tutorPicture &&
        studentName == other.studentName &&
        studentNumber == other.studentNumber &&
        sRating == other.sRating &&
        studentPicture == other.studentPicture &&
        subjectName == other.subjectName &&
        subjectCode == other.subjectCode &&
        course == other.course &&
        completed == other.completed &&
        card == other.card &&
        stage2 == other.stage2 &&
        stage3 == other.stage3 &&
        stage4 == other.stage4 &&
        stage5 == other.stage5 &&
        locationPicked == other.locationPicked &&
        location == other.location &&
        cancelledTime == other.cancelledTime &&
        unavailable == other.unavailable &&
        tutorLocation == other.tutorLocation &&
        tLocationPicked == other.tLocationPicked &&
        admin == other.admin &&
        addedNumber == other.addedNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, attendee.hashCode), tutor.hashCode), price.hashCode), requestTime.hashCode), completeTime.hashCode), subject.hashCode), status.hashCode), online.hashCode), topic.hashCode), accepted.hashCode), booked.hashCode), inProgress.hashCode), cancelled.hashCode), bookingInProgress.hashCode), stage1.hashCode), studentRating.hashCode), tutorRating.hashCode), rating.hashCode), link.hashCode), day2day.hashCode), classLength.hashCode), createdTime.hashCode), payClass.hashCode), paid.hashCode), tutorAddress.hashCode), studentAddress.hashCode), tutorName.hashCode), tutorNumber.hashCode), tRating.hashCode), tutorPicture.hashCode), studentName.hashCode), studentNumber.hashCode), sRating.hashCode),
                                                                                studentPicture.hashCode),
                                                                            subjectName.hashCode),
                                                                        subjectCode.hashCode),
                                                                    course.hashCode),
                                                                completed.hashCode),
                                                            card.hashCode),
                                                        stage2.hashCode),
                                                    stage3.hashCode),
                                                stage4.hashCode),
                                            stage5.hashCode),
                                        locationPicked.hashCode),
                                    location.hashCode),
                                cancelledTime.hashCode),
                            unavailable.hashCode),
                        tutorLocation.hashCode),
                    tLocationPicked.hashCode),
                admin.hashCode),
            addedNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClassesRecord')
          ..add('attendee', attendee)
          ..add('tutor', tutor)
          ..add('price', price)
          ..add('requestTime', requestTime)
          ..add('completeTime', completeTime)
          ..add('subject', subject)
          ..add('status', status)
          ..add('online', online)
          ..add('topic', topic)
          ..add('accepted', accepted)
          ..add('booked', booked)
          ..add('inProgress', inProgress)
          ..add('cancelled', cancelled)
          ..add('bookingInProgress', bookingInProgress)
          ..add('stage1', stage1)
          ..add('studentRating', studentRating)
          ..add('tutorRating', tutorRating)
          ..add('rating', rating)
          ..add('link', link)
          ..add('day2day', day2day)
          ..add('classLength', classLength)
          ..add('createdTime', createdTime)
          ..add('payClass', payClass)
          ..add('paid', paid)
          ..add('tutorAddress', tutorAddress)
          ..add('studentAddress', studentAddress)
          ..add('tutorName', tutorName)
          ..add('tutorNumber', tutorNumber)
          ..add('tRating', tRating)
          ..add('tutorPicture', tutorPicture)
          ..add('studentName', studentName)
          ..add('studentNumber', studentNumber)
          ..add('sRating', sRating)
          ..add('studentPicture', studentPicture)
          ..add('subjectName', subjectName)
          ..add('subjectCode', subjectCode)
          ..add('course', course)
          ..add('completed', completed)
          ..add('card', card)
          ..add('stage2', stage2)
          ..add('stage3', stage3)
          ..add('stage4', stage4)
          ..add('stage5', stage5)
          ..add('locationPicked', locationPicked)
          ..add('location', location)
          ..add('cancelledTime', cancelledTime)
          ..add('unavailable', unavailable)
          ..add('tutorLocation', tutorLocation)
          ..add('tLocationPicked', tLocationPicked)
          ..add('admin', admin)
          ..add('addedNumber', addedNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClassesRecordBuilder
    implements Builder<ClassesRecord, ClassesRecordBuilder> {
  _$ClassesRecord? _$v;

  DocumentReference<Object?>? _attendee;
  DocumentReference<Object?>? get attendee => _$this._attendee;
  set attendee(DocumentReference<Object?>? attendee) =>
      _$this._attendee = attendee;

  DocumentReference<Object?>? _tutor;
  DocumentReference<Object?>? get tutor => _$this._tutor;
  set tutor(DocumentReference<Object?>? tutor) => _$this._tutor = tutor;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DateTime? _requestTime;
  DateTime? get requestTime => _$this._requestTime;
  set requestTime(DateTime? requestTime) => _$this._requestTime = requestTime;

  DateTime? _completeTime;
  DateTime? get completeTime => _$this._completeTime;
  set completeTime(DateTime? completeTime) =>
      _$this._completeTime = completeTime;

  DocumentReference<Object?>? _subject;
  DocumentReference<Object?>? get subject => _$this._subject;
  set subject(DocumentReference<Object?>? subject) => _$this._subject = subject;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _online;
  bool? get online => _$this._online;
  set online(bool? online) => _$this._online = online;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  bool? _accepted;
  bool? get accepted => _$this._accepted;
  set accepted(bool? accepted) => _$this._accepted = accepted;

  bool? _booked;
  bool? get booked => _$this._booked;
  set booked(bool? booked) => _$this._booked = booked;

  bool? _inProgress;
  bool? get inProgress => _$this._inProgress;
  set inProgress(bool? inProgress) => _$this._inProgress = inProgress;

  bool? _cancelled;
  bool? get cancelled => _$this._cancelled;
  set cancelled(bool? cancelled) => _$this._cancelled = cancelled;

  bool? _bookingInProgress;
  bool? get bookingInProgress => _$this._bookingInProgress;
  set bookingInProgress(bool? bookingInProgress) =>
      _$this._bookingInProgress = bookingInProgress;

  bool? _stage1;
  bool? get stage1 => _$this._stage1;
  set stage1(bool? stage1) => _$this._stage1 = stage1;

  double? _studentRating;
  double? get studentRating => _$this._studentRating;
  set studentRating(double? studentRating) =>
      _$this._studentRating = studentRating;

  double? _tutorRating;
  double? get tutorRating => _$this._tutorRating;
  set tutorRating(double? tutorRating) => _$this._tutorRating = tutorRating;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  bool? _day2day;
  bool? get day2day => _$this._day2day;
  set day2day(bool? day2day) => _$this._day2day = day2day;

  double? _classLength;
  double? get classLength => _$this._classLength;
  set classLength(double? classLength) => _$this._classLength = classLength;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  bool? _payClass;
  bool? get payClass => _$this._payClass;
  set payClass(bool? payClass) => _$this._payClass = payClass;

  bool? _paid;
  bool? get paid => _$this._paid;
  set paid(bool? paid) => _$this._paid = paid;

  LatLng? _tutorAddress;
  LatLng? get tutorAddress => _$this._tutorAddress;
  set tutorAddress(LatLng? tutorAddress) => _$this._tutorAddress = tutorAddress;

  LatLng? _studentAddress;
  LatLng? get studentAddress => _$this._studentAddress;
  set studentAddress(LatLng? studentAddress) =>
      _$this._studentAddress = studentAddress;

  String? _tutorName;
  String? get tutorName => _$this._tutorName;
  set tutorName(String? tutorName) => _$this._tutorName = tutorName;

  String? _tutorNumber;
  String? get tutorNumber => _$this._tutorNumber;
  set tutorNumber(String? tutorNumber) => _$this._tutorNumber = tutorNumber;

  double? _tRating;
  double? get tRating => _$this._tRating;
  set tRating(double? tRating) => _$this._tRating = tRating;

  String? _tutorPicture;
  String? get tutorPicture => _$this._tutorPicture;
  set tutorPicture(String? tutorPicture) => _$this._tutorPicture = tutorPicture;

  String? _studentName;
  String? get studentName => _$this._studentName;
  set studentName(String? studentName) => _$this._studentName = studentName;

  String? _studentNumber;
  String? get studentNumber => _$this._studentNumber;
  set studentNumber(String? studentNumber) =>
      _$this._studentNumber = studentNumber;

  double? _sRating;
  double? get sRating => _$this._sRating;
  set sRating(double? sRating) => _$this._sRating = sRating;

  String? _studentPicture;
  String? get studentPicture => _$this._studentPicture;
  set studentPicture(String? studentPicture) =>
      _$this._studentPicture = studentPicture;

  String? _subjectName;
  String? get subjectName => _$this._subjectName;
  set subjectName(String? subjectName) => _$this._subjectName = subjectName;

  String? _subjectCode;
  String? get subjectCode => _$this._subjectCode;
  set subjectCode(String? subjectCode) => _$this._subjectCode = subjectCode;

  String? _course;
  String? get course => _$this._course;
  set course(String? course) => _$this._course = course;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  bool? _card;
  bool? get card => _$this._card;
  set card(bool? card) => _$this._card = card;

  bool? _stage2;
  bool? get stage2 => _$this._stage2;
  set stage2(bool? stage2) => _$this._stage2 = stage2;

  bool? _stage3;
  bool? get stage3 => _$this._stage3;
  set stage3(bool? stage3) => _$this._stage3 = stage3;

  bool? _stage4;
  bool? get stage4 => _$this._stage4;
  set stage4(bool? stage4) => _$this._stage4 = stage4;

  bool? _stage5;
  bool? get stage5 => _$this._stage5;
  set stage5(bool? stage5) => _$this._stage5 = stage5;

  bool? _locationPicked;
  bool? get locationPicked => _$this._locationPicked;
  set locationPicked(bool? locationPicked) =>
      _$this._locationPicked = locationPicked;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DateTime? _cancelledTime;
  DateTime? get cancelledTime => _$this._cancelledTime;
  set cancelledTime(DateTime? cancelledTime) =>
      _$this._cancelledTime = cancelledTime;

  bool? _unavailable;
  bool? get unavailable => _$this._unavailable;
  set unavailable(bool? unavailable) => _$this._unavailable = unavailable;

  LatLng? _tutorLocation;
  LatLng? get tutorLocation => _$this._tutorLocation;
  set tutorLocation(LatLng? tutorLocation) =>
      _$this._tutorLocation = tutorLocation;

  bool? _tLocationPicked;
  bool? get tLocationPicked => _$this._tLocationPicked;
  set tLocationPicked(bool? tLocationPicked) =>
      _$this._tLocationPicked = tLocationPicked;

  DocumentReference<Object?>? _admin;
  DocumentReference<Object?>? get admin => _$this._admin;
  set admin(DocumentReference<Object?>? admin) => _$this._admin = admin;

  int? _addedNumber;
  int? get addedNumber => _$this._addedNumber;
  set addedNumber(int? addedNumber) => _$this._addedNumber = addedNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClassesRecordBuilder() {
    ClassesRecord._initializeBuilder(this);
  }

  ClassesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attendee = $v.attendee;
      _tutor = $v.tutor;
      _price = $v.price;
      _requestTime = $v.requestTime;
      _completeTime = $v.completeTime;
      _subject = $v.subject;
      _status = $v.status;
      _online = $v.online;
      _topic = $v.topic;
      _accepted = $v.accepted;
      _booked = $v.booked;
      _inProgress = $v.inProgress;
      _cancelled = $v.cancelled;
      _bookingInProgress = $v.bookingInProgress;
      _stage1 = $v.stage1;
      _studentRating = $v.studentRating;
      _tutorRating = $v.tutorRating;
      _rating = $v.rating;
      _link = $v.link;
      _day2day = $v.day2day;
      _classLength = $v.classLength;
      _createdTime = $v.createdTime;
      _payClass = $v.payClass;
      _paid = $v.paid;
      _tutorAddress = $v.tutorAddress;
      _studentAddress = $v.studentAddress;
      _tutorName = $v.tutorName;
      _tutorNumber = $v.tutorNumber;
      _tRating = $v.tRating;
      _tutorPicture = $v.tutorPicture;
      _studentName = $v.studentName;
      _studentNumber = $v.studentNumber;
      _sRating = $v.sRating;
      _studentPicture = $v.studentPicture;
      _subjectName = $v.subjectName;
      _subjectCode = $v.subjectCode;
      _course = $v.course;
      _completed = $v.completed;
      _card = $v.card;
      _stage2 = $v.stage2;
      _stage3 = $v.stage3;
      _stage4 = $v.stage4;
      _stage5 = $v.stage5;
      _locationPicked = $v.locationPicked;
      _location = $v.location;
      _cancelledTime = $v.cancelledTime;
      _unavailable = $v.unavailable;
      _tutorLocation = $v.tutorLocation;
      _tLocationPicked = $v.tLocationPicked;
      _admin = $v.admin;
      _addedNumber = $v.addedNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassesRecord;
  }

  @override
  void update(void Function(ClassesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClassesRecord build() => _build();

  _$ClassesRecord _build() {
    final _$result = _$v ??
        new _$ClassesRecord._(
            attendee: attendee,
            tutor: tutor,
            price: price,
            requestTime: requestTime,
            completeTime: completeTime,
            subject: subject,
            status: status,
            online: online,
            topic: topic,
            accepted: accepted,
            booked: booked,
            inProgress: inProgress,
            cancelled: cancelled,
            bookingInProgress: bookingInProgress,
            stage1: stage1,
            studentRating: studentRating,
            tutorRating: tutorRating,
            rating: rating,
            link: link,
            day2day: day2day,
            classLength: classLength,
            createdTime: createdTime,
            payClass: payClass,
            paid: paid,
            tutorAddress: tutorAddress,
            studentAddress: studentAddress,
            tutorName: tutorName,
            tutorNumber: tutorNumber,
            tRating: tRating,
            tutorPicture: tutorPicture,
            studentName: studentName,
            studentNumber: studentNumber,
            sRating: sRating,
            studentPicture: studentPicture,
            subjectName: subjectName,
            subjectCode: subjectCode,
            course: course,
            completed: completed,
            card: card,
            stage2: stage2,
            stage3: stage3,
            stage4: stage4,
            stage5: stage5,
            locationPicked: locationPicked,
            location: location,
            cancelledTime: cancelledTime,
            unavailable: unavailable,
            tutorLocation: tutorLocation,
            tLocationPicked: tLocationPicked,
            admin: admin,
            addedNumber: addedNumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
