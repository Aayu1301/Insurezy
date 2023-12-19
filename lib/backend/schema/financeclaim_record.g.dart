// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financeclaim_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FinanceclaimRecord> _$financeclaimRecordSerializer =
    new _$FinanceclaimRecordSerializer();

class _$FinanceclaimRecordSerializer
    implements StructuredSerializer<FinanceclaimRecord> {
  @override
  final Iterable<Type> types = const [FinanceclaimRecord, _$FinanceclaimRecord];
  @override
  final String wireName = 'FinanceclaimRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FinanceclaimRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.patientName;
    if (value != null) {
      result
        ..add('PatientName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientAadhar;
    if (value != null) {
      result
        ..add('PatientAadhar')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.patientDob;
    if (value != null) {
      result
        ..add('PatientDob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.patientMobile;
    if (value != null) {
      result
        ..add('PatientMobile')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.patientGender;
    if (value != null) {
      result
        ..add('PatientGender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientState;
    if (value != null) {
      result
        ..add('PatientState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientAddress;
    if (value != null) {
      result
        ..add('PatientAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hospitalName;
    if (value != null) {
      result
        ..add('HospitalName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reasonofHospitalization;
    if (value != null) {
      result
        ..add('ReasonofHospitalization')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.doctorName;
    if (value != null) {
      result
        ..add('DoctorName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientDoa;
    if (value != null) {
      result
        ..add('PatientDoa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.medicalBills;
    if (value != null) {
      result
        ..add('MedicalBills')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.documents;
    if (value != null) {
      result
        ..add('Documents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.otherDocuments;
    if (value != null) {
      result
        ..add('OtherDocuments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientRelation;
    if (value != null) {
      result
        ..add('PatientRelation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  FinanceclaimRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FinanceclaimRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'PatientName':
          result.patientName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PatientAadhar':
          result.patientAadhar = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'PatientDob':
          result.patientDob = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'PatientMobile':
          result.patientMobile = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'PatientGender':
          result.patientGender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PatientState':
          result.patientState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PatientAddress':
          result.patientAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'HospitalName':
          result.hospitalName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ReasonofHospitalization':
          result.reasonofHospitalization = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DoctorName':
          result.doctorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PatientDoa':
          result.patientDoa = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'MedicalBills':
          result.medicalBills = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Documents':
          result.documents = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'OtherDocuments':
          result.otherDocuments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PatientRelation':
          result.patientRelation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$FinanceclaimRecord extends FinanceclaimRecord {
  @override
  final String? patientName;
  @override
  final int? patientAadhar;
  @override
  final DateTime? patientDob;
  @override
  final int? patientMobile;
  @override
  final String? patientGender;
  @override
  final String? patientState;
  @override
  final String? patientAddress;
  @override
  final String? hospitalName;
  @override
  final String? reasonofHospitalization;
  @override
  final String? doctorName;
  @override
  final DateTime? patientDoa;
  @override
  final String? medicalBills;
  @override
  final String? documents;
  @override
  final String? otherDocuments;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? patientRelation;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FinanceclaimRecord(
          [void Function(FinanceclaimRecordBuilder)? updates]) =>
      (new FinanceclaimRecordBuilder()..update(updates))._build();

  _$FinanceclaimRecord._(
      {this.patientName,
      this.patientAadhar,
      this.patientDob,
      this.patientMobile,
      this.patientGender,
      this.patientState,
      this.patientAddress,
      this.hospitalName,
      this.reasonofHospitalization,
      this.doctorName,
      this.patientDoa,
      this.medicalBills,
      this.documents,
      this.otherDocuments,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.patientRelation,
      this.ffRef})
      : super._();

  @override
  FinanceclaimRecord rebuild(
          void Function(FinanceclaimRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FinanceclaimRecordBuilder toBuilder() =>
      new FinanceclaimRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FinanceclaimRecord &&
        patientName == other.patientName &&
        patientAadhar == other.patientAadhar &&
        patientDob == other.patientDob &&
        patientMobile == other.patientMobile &&
        patientGender == other.patientGender &&
        patientState == other.patientState &&
        patientAddress == other.patientAddress &&
        hospitalName == other.hospitalName &&
        reasonofHospitalization == other.reasonofHospitalization &&
        doctorName == other.doctorName &&
        patientDoa == other.patientDoa &&
        medicalBills == other.medicalBills &&
        documents == other.documents &&
        otherDocuments == other.otherDocuments &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        patientRelation == other.patientRelation &&
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
                                                                            $jc($jc($jc($jc(0, patientName.hashCode), patientAadhar.hashCode), patientDob.hashCode),
                                                                                patientMobile.hashCode),
                                                                            patientGender.hashCode),
                                                                        patientState.hashCode),
                                                                    patientAddress.hashCode),
                                                                hospitalName.hashCode),
                                                            reasonofHospitalization.hashCode),
                                                        doctorName.hashCode),
                                                    patientDoa.hashCode),
                                                medicalBills.hashCode),
                                            documents.hashCode),
                                        otherDocuments.hashCode),
                                    email.hashCode),
                                displayName.hashCode),
                            photoUrl.hashCode),
                        uid.hashCode),
                    createdTime.hashCode),
                phoneNumber.hashCode),
            patientRelation.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FinanceclaimRecord')
          ..add('patientName', patientName)
          ..add('patientAadhar', patientAadhar)
          ..add('patientDob', patientDob)
          ..add('patientMobile', patientMobile)
          ..add('patientGender', patientGender)
          ..add('patientState', patientState)
          ..add('patientAddress', patientAddress)
          ..add('hospitalName', hospitalName)
          ..add('reasonofHospitalization', reasonofHospitalization)
          ..add('doctorName', doctorName)
          ..add('patientDoa', patientDoa)
          ..add('medicalBills', medicalBills)
          ..add('documents', documents)
          ..add('otherDocuments', otherDocuments)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('patientRelation', patientRelation)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FinanceclaimRecordBuilder
    implements Builder<FinanceclaimRecord, FinanceclaimRecordBuilder> {
  _$FinanceclaimRecord? _$v;

  String? _patientName;
  String? get patientName => _$this._patientName;
  set patientName(String? patientName) => _$this._patientName = patientName;

  int? _patientAadhar;
  int? get patientAadhar => _$this._patientAadhar;
  set patientAadhar(int? patientAadhar) =>
      _$this._patientAadhar = patientAadhar;

  DateTime? _patientDob;
  DateTime? get patientDob => _$this._patientDob;
  set patientDob(DateTime? patientDob) => _$this._patientDob = patientDob;

  int? _patientMobile;
  int? get patientMobile => _$this._patientMobile;
  set patientMobile(int? patientMobile) =>
      _$this._patientMobile = patientMobile;

  String? _patientGender;
  String? get patientGender => _$this._patientGender;
  set patientGender(String? patientGender) =>
      _$this._patientGender = patientGender;

  String? _patientState;
  String? get patientState => _$this._patientState;
  set patientState(String? patientState) => _$this._patientState = patientState;

  String? _patientAddress;
  String? get patientAddress => _$this._patientAddress;
  set patientAddress(String? patientAddress) =>
      _$this._patientAddress = patientAddress;

  String? _hospitalName;
  String? get hospitalName => _$this._hospitalName;
  set hospitalName(String? hospitalName) => _$this._hospitalName = hospitalName;

  String? _reasonofHospitalization;
  String? get reasonofHospitalization => _$this._reasonofHospitalization;
  set reasonofHospitalization(String? reasonofHospitalization) =>
      _$this._reasonofHospitalization = reasonofHospitalization;

  String? _doctorName;
  String? get doctorName => _$this._doctorName;
  set doctorName(String? doctorName) => _$this._doctorName = doctorName;

  DateTime? _patientDoa;
  DateTime? get patientDoa => _$this._patientDoa;
  set patientDoa(DateTime? patientDoa) => _$this._patientDoa = patientDoa;

  String? _medicalBills;
  String? get medicalBills => _$this._medicalBills;
  set medicalBills(String? medicalBills) => _$this._medicalBills = medicalBills;

  String? _documents;
  String? get documents => _$this._documents;
  set documents(String? documents) => _$this._documents = documents;

  String? _otherDocuments;
  String? get otherDocuments => _$this._otherDocuments;
  set otherDocuments(String? otherDocuments) =>
      _$this._otherDocuments = otherDocuments;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _patientRelation;
  String? get patientRelation => _$this._patientRelation;
  set patientRelation(String? patientRelation) =>
      _$this._patientRelation = patientRelation;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FinanceclaimRecordBuilder() {
    FinanceclaimRecord._initializeBuilder(this);
  }

  FinanceclaimRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientName = $v.patientName;
      _patientAadhar = $v.patientAadhar;
      _patientDob = $v.patientDob;
      _patientMobile = $v.patientMobile;
      _patientGender = $v.patientGender;
      _patientState = $v.patientState;
      _patientAddress = $v.patientAddress;
      _hospitalName = $v.hospitalName;
      _reasonofHospitalization = $v.reasonofHospitalization;
      _doctorName = $v.doctorName;
      _patientDoa = $v.patientDoa;
      _medicalBills = $v.medicalBills;
      _documents = $v.documents;
      _otherDocuments = $v.otherDocuments;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _patientRelation = $v.patientRelation;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FinanceclaimRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FinanceclaimRecord;
  }

  @override
  void update(void Function(FinanceclaimRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FinanceclaimRecord build() => _build();

  _$FinanceclaimRecord _build() {
    final _$result = _$v ??
        new _$FinanceclaimRecord._(
            patientName: patientName,
            patientAadhar: patientAadhar,
            patientDob: patientDob,
            patientMobile: patientMobile,
            patientGender: patientGender,
            patientState: patientState,
            patientAddress: patientAddress,
            hospitalName: hospitalName,
            reasonofHospitalization: reasonofHospitalization,
            doctorName: doctorName,
            patientDoa: patientDoa,
            medicalBills: medicalBills,
            documents: documents,
            otherDocuments: otherDocuments,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            patientRelation: patientRelation,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
