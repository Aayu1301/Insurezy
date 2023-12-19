// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financeclaim_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FinanceclaimStruct> _$financeclaimStructSerializer =
    new _$FinanceclaimStructSerializer();

class _$FinanceclaimStructSerializer
    implements StructuredSerializer<FinanceclaimStruct> {
  @override
  final Iterable<Type> types = const [FinanceclaimStruct, _$FinanceclaimStruct];
  @override
  final String wireName = 'FinanceclaimStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FinanceclaimStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.patientName;
    if (value != null) {
      result
        ..add('PatientName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pAadhar;
    if (value != null) {
      result
        ..add('PAadhar')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pDob;
    if (value != null) {
      result
        ..add('PDob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.pMobile;
    if (value != null) {
      result
        ..add('PMobile')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pGender;
    if (value != null) {
      result
        ..add('PGender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pState;
    if (value != null) {
      result
        ..add('PState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paddress;
    if (value != null) {
      result
        ..add('Paddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FinanceclaimStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FinanceclaimStructBuilder();

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
        case 'PAadhar':
          result.pAadhar = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'PDob':
          result.pDob = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'PMobile':
          result.pMobile = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'PGender':
          result.pGender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PState':
          result.pState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Paddress':
          result.paddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$FinanceclaimStruct extends FinanceclaimStruct {
  @override
  final String? patientName;
  @override
  final int? pAadhar;
  @override
  final DateTime? pDob;
  @override
  final int? pMobile;
  @override
  final String? pGender;
  @override
  final String? pState;
  @override
  final String? paddress;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$FinanceclaimStruct(
          [void Function(FinanceclaimStructBuilder)? updates]) =>
      (new FinanceclaimStructBuilder()..update(updates))._build();

  _$FinanceclaimStruct._(
      {this.patientName,
      this.pAadhar,
      this.pDob,
      this.pMobile,
      this.pGender,
      this.pState,
      this.paddress,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'FinanceclaimStruct', 'firestoreUtilData');
  }

  @override
  FinanceclaimStruct rebuild(
          void Function(FinanceclaimStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FinanceclaimStructBuilder toBuilder() =>
      new FinanceclaimStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FinanceclaimStruct &&
        patientName == other.patientName &&
        pAadhar == other.pAadhar &&
        pDob == other.pDob &&
        pMobile == other.pMobile &&
        pGender == other.pGender &&
        pState == other.pState &&
        paddress == other.paddress &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, patientName.hashCode), pAadhar.hashCode),
                            pDob.hashCode),
                        pMobile.hashCode),
                    pGender.hashCode),
                pState.hashCode),
            paddress.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FinanceclaimStruct')
          ..add('patientName', patientName)
          ..add('pAadhar', pAadhar)
          ..add('pDob', pDob)
          ..add('pMobile', pMobile)
          ..add('pGender', pGender)
          ..add('pState', pState)
          ..add('paddress', paddress)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class FinanceclaimStructBuilder
    implements Builder<FinanceclaimStruct, FinanceclaimStructBuilder> {
  _$FinanceclaimStruct? _$v;

  String? _patientName;
  String? get patientName => _$this._patientName;
  set patientName(String? patientName) => _$this._patientName = patientName;

  int? _pAadhar;
  int? get pAadhar => _$this._pAadhar;
  set pAadhar(int? pAadhar) => _$this._pAadhar = pAadhar;

  DateTime? _pDob;
  DateTime? get pDob => _$this._pDob;
  set pDob(DateTime? pDob) => _$this._pDob = pDob;

  int? _pMobile;
  int? get pMobile => _$this._pMobile;
  set pMobile(int? pMobile) => _$this._pMobile = pMobile;

  String? _pGender;
  String? get pGender => _$this._pGender;
  set pGender(String? pGender) => _$this._pGender = pGender;

  String? _pState;
  String? get pState => _$this._pState;
  set pState(String? pState) => _$this._pState = pState;

  String? _paddress;
  String? get paddress => _$this._paddress;
  set paddress(String? paddress) => _$this._paddress = paddress;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  FinanceclaimStructBuilder() {
    FinanceclaimStruct._initializeBuilder(this);
  }

  FinanceclaimStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientName = $v.patientName;
      _pAadhar = $v.pAadhar;
      _pDob = $v.pDob;
      _pMobile = $v.pMobile;
      _pGender = $v.pGender;
      _pState = $v.pState;
      _paddress = $v.paddress;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FinanceclaimStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FinanceclaimStruct;
  }

  @override
  void update(void Function(FinanceclaimStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FinanceclaimStruct build() => _build();

  _$FinanceclaimStruct _build() {
    final _$result = _$v ??
        new _$FinanceclaimStruct._(
            patientName: patientName,
            pAadhar: pAadhar,
            pDob: pDob,
            pMobile: pMobile,
            pGender: pGender,
            pState: pState,
            paddress: paddress,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'FinanceclaimStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
