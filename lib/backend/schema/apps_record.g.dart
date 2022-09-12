// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apps_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppsRecord> _$appsRecordSerializer = new _$AppsRecordSerializer();

class _$AppsRecordSerializer implements StructuredSerializer<AppsRecord> {
  @override
  final Iterable<Type> types = const [AppsRecord, _$AppsRecord];
  @override
  final String wireName = 'AppsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.privacyPolicy;
    if (value != null) {
      result
        ..add('privacyPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.terms;
    if (value != null) {
      result
        ..add('terms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.disclaimer;
    if (value != null) {
      result
        ..add('disclaimer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appDescription;
    if (value != null) {
      result
        ..add('app_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publishedDate;
    if (value != null) {
      result
        ..add('published_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.appStore;
    if (value != null) {
      result
        ..add('app_store')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.playStore;
    if (value != null) {
      result
        ..add('play_store')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  AppsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'privacyPolicy':
          result.privacyPolicy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'terms':
          result.terms = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'disclaimer':
          result.disclaimer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'app_description':
          result.appDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'published_date':
          result.publishedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'app_store':
          result.appStore = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'play_store':
          result.playStore = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$AppsRecord extends AppsRecord {
  @override
  final String? name;
  @override
  final String? privacyPolicy;
  @override
  final String? terms;
  @override
  final String? disclaimer;
  @override
  final String? appDescription;
  @override
  final DateTime? publishedDate;
  @override
  final bool? appStore;
  @override
  final bool? playStore;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AppsRecord([void Function(AppsRecordBuilder)? updates]) =>
      (new AppsRecordBuilder()..update(updates))._build();

  _$AppsRecord._(
      {this.name,
      this.privacyPolicy,
      this.terms,
      this.disclaimer,
      this.appDescription,
      this.publishedDate,
      this.appStore,
      this.playStore,
      this.ffRef})
      : super._();

  @override
  AppsRecord rebuild(void Function(AppsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppsRecordBuilder toBuilder() => new AppsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppsRecord &&
        name == other.name &&
        privacyPolicy == other.privacyPolicy &&
        terms == other.terms &&
        disclaimer == other.disclaimer &&
        appDescription == other.appDescription &&
        publishedDate == other.publishedDate &&
        appStore == other.appStore &&
        playStore == other.playStore &&
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
                                $jc($jc(0, name.hashCode),
                                    privacyPolicy.hashCode),
                                terms.hashCode),
                            disclaimer.hashCode),
                        appDescription.hashCode),
                    publishedDate.hashCode),
                appStore.hashCode),
            playStore.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppsRecord')
          ..add('name', name)
          ..add('privacyPolicy', privacyPolicy)
          ..add('terms', terms)
          ..add('disclaimer', disclaimer)
          ..add('appDescription', appDescription)
          ..add('publishedDate', publishedDate)
          ..add('appStore', appStore)
          ..add('playStore', playStore)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AppsRecordBuilder implements Builder<AppsRecord, AppsRecordBuilder> {
  _$AppsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _privacyPolicy;
  String? get privacyPolicy => _$this._privacyPolicy;
  set privacyPolicy(String? privacyPolicy) =>
      _$this._privacyPolicy = privacyPolicy;

  String? _terms;
  String? get terms => _$this._terms;
  set terms(String? terms) => _$this._terms = terms;

  String? _disclaimer;
  String? get disclaimer => _$this._disclaimer;
  set disclaimer(String? disclaimer) => _$this._disclaimer = disclaimer;

  String? _appDescription;
  String? get appDescription => _$this._appDescription;
  set appDescription(String? appDescription) =>
      _$this._appDescription = appDescription;

  DateTime? _publishedDate;
  DateTime? get publishedDate => _$this._publishedDate;
  set publishedDate(DateTime? publishedDate) =>
      _$this._publishedDate = publishedDate;

  bool? _appStore;
  bool? get appStore => _$this._appStore;
  set appStore(bool? appStore) => _$this._appStore = appStore;

  bool? _playStore;
  bool? get playStore => _$this._playStore;
  set playStore(bool? playStore) => _$this._playStore = playStore;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AppsRecordBuilder() {
    AppsRecord._initializeBuilder(this);
  }

  AppsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _privacyPolicy = $v.privacyPolicy;
      _terms = $v.terms;
      _disclaimer = $v.disclaimer;
      _appDescription = $v.appDescription;
      _publishedDate = $v.publishedDate;
      _appStore = $v.appStore;
      _playStore = $v.playStore;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppsRecord;
  }

  @override
  void update(void Function(AppsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppsRecord build() => _build();

  _$AppsRecord _build() {
    final _$result = _$v ??
        new _$AppsRecord._(
            name: name,
            privacyPolicy: privacyPolicy,
            terms: terms,
            disclaimer: disclaimer,
            appDescription: appDescription,
            publishedDate: publishedDate,
            appStore: appStore,
            playStore: playStore,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
