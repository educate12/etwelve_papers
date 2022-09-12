// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facebook_classes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FacebookClassesRecord> _$facebookClassesRecordSerializer =
    new _$FacebookClassesRecordSerializer();

class _$FacebookClassesRecordSerializer
    implements StructuredSerializer<FacebookClassesRecord> {
  @override
  final Iterable<Type> types = const [
    FacebookClassesRecord,
    _$FacebookClassesRecord
  ];
  @override
  final String wireName = 'FacebookClassesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FacebookClassesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.subject;
    if (value != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.grade;
    if (value != null) {
      result
        ..add('grade')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.topic;
    if (value != null) {
      result
        ..add('topic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateTime;
    if (value != null) {
      result
        ..add('date_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDateTime;
    if (value != null) {
      result
        ..add('end_date_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.participants;
    if (value != null) {
      result
        ..add('participants')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.tutor;
    if (value != null) {
      result
        ..add('tutor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.link;
    if (value != null) {
      result
        ..add('link')
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
    value = object.classSubject;
    if (value != null) {
      result
        ..add('class_subject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.classTutor;
    if (value != null) {
      result
        ..add('class_tutor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  FacebookClassesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FacebookClassesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'grade':
          result.grade = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'topic':
          result.topic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_time':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'end_date_time':
          result.endDateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'participants':
          result.participants.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'tutor':
          result.tutor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'completed':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'class_subject':
          result.classSubject = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'class_tutor':
          result.classTutor = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$FacebookClassesRecord extends FacebookClassesRecord {
  @override
  final String? subject;
  @override
  final int? grade;
  @override
  final String? topic;
  @override
  final DateTime? dateTime;
  @override
  final DateTime? endDateTime;
  @override
  final BuiltList<DocumentReference<Object?>>? participants;
  @override
  final String? tutor;
  @override
  final String? link;
  @override
  final bool? completed;
  @override
  final DocumentReference<Object?>? classSubject;
  @override
  final DocumentReference<Object?>? classTutor;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FacebookClassesRecord(
          [void Function(FacebookClassesRecordBuilder)? updates]) =>
      (new FacebookClassesRecordBuilder()..update(updates))._build();

  _$FacebookClassesRecord._(
      {this.subject,
      this.grade,
      this.topic,
      this.dateTime,
      this.endDateTime,
      this.participants,
      this.tutor,
      this.link,
      this.completed,
      this.classSubject,
      this.classTutor,
      this.ffRef})
      : super._();

  @override
  FacebookClassesRecord rebuild(
          void Function(FacebookClassesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FacebookClassesRecordBuilder toBuilder() =>
      new FacebookClassesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FacebookClassesRecord &&
        subject == other.subject &&
        grade == other.grade &&
        topic == other.topic &&
        dateTime == other.dateTime &&
        endDateTime == other.endDateTime &&
        participants == other.participants &&
        tutor == other.tutor &&
        link == other.link &&
        completed == other.completed &&
        classSubject == other.classSubject &&
        classTutor == other.classTutor &&
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
                                            $jc($jc(0, subject.hashCode),
                                                grade.hashCode),
                                            topic.hashCode),
                                        dateTime.hashCode),
                                    endDateTime.hashCode),
                                participants.hashCode),
                            tutor.hashCode),
                        link.hashCode),
                    completed.hashCode),
                classSubject.hashCode),
            classTutor.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FacebookClassesRecord')
          ..add('subject', subject)
          ..add('grade', grade)
          ..add('topic', topic)
          ..add('dateTime', dateTime)
          ..add('endDateTime', endDateTime)
          ..add('participants', participants)
          ..add('tutor', tutor)
          ..add('link', link)
          ..add('completed', completed)
          ..add('classSubject', classSubject)
          ..add('classTutor', classTutor)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FacebookClassesRecordBuilder
    implements Builder<FacebookClassesRecord, FacebookClassesRecordBuilder> {
  _$FacebookClassesRecord? _$v;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  int? _grade;
  int? get grade => _$this._grade;
  set grade(int? grade) => _$this._grade = grade;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  DateTime? _endDateTime;
  DateTime? get endDateTime => _$this._endDateTime;
  set endDateTime(DateTime? endDateTime) => _$this._endDateTime = endDateTime;

  ListBuilder<DocumentReference<Object?>>? _participants;
  ListBuilder<DocumentReference<Object?>> get participants =>
      _$this._participants ??= new ListBuilder<DocumentReference<Object?>>();
  set participants(ListBuilder<DocumentReference<Object?>>? participants) =>
      _$this._participants = participants;

  String? _tutor;
  String? get tutor => _$this._tutor;
  set tutor(String? tutor) => _$this._tutor = tutor;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  DocumentReference<Object?>? _classSubject;
  DocumentReference<Object?>? get classSubject => _$this._classSubject;
  set classSubject(DocumentReference<Object?>? classSubject) =>
      _$this._classSubject = classSubject;

  DocumentReference<Object?>? _classTutor;
  DocumentReference<Object?>? get classTutor => _$this._classTutor;
  set classTutor(DocumentReference<Object?>? classTutor) =>
      _$this._classTutor = classTutor;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FacebookClassesRecordBuilder() {
    FacebookClassesRecord._initializeBuilder(this);
  }

  FacebookClassesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subject = $v.subject;
      _grade = $v.grade;
      _topic = $v.topic;
      _dateTime = $v.dateTime;
      _endDateTime = $v.endDateTime;
      _participants = $v.participants?.toBuilder();
      _tutor = $v.tutor;
      _link = $v.link;
      _completed = $v.completed;
      _classSubject = $v.classSubject;
      _classTutor = $v.classTutor;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FacebookClassesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FacebookClassesRecord;
  }

  @override
  void update(void Function(FacebookClassesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FacebookClassesRecord build() => _build();

  _$FacebookClassesRecord _build() {
    _$FacebookClassesRecord _$result;
    try {
      _$result = _$v ??
          new _$FacebookClassesRecord._(
              subject: subject,
              grade: grade,
              topic: topic,
              dateTime: dateTime,
              endDateTime: endDateTime,
              participants: _participants?.build(),
              tutor: tutor,
              link: link,
              completed: completed,
              classSubject: classSubject,
              classTutor: classTutor,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'participants';
        _participants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FacebookClassesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
