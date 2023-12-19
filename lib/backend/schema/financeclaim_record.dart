import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'financeclaim_record.g.dart';

abstract class FinanceclaimRecord
    implements Built<FinanceclaimRecord, FinanceclaimRecordBuilder> {
  static Serializer<FinanceclaimRecord> get serializer =>
      _$financeclaimRecordSerializer;

  @BuiltValueField(wireName: 'PatientName')
  String? get patientName;

  @BuiltValueField(wireName: 'PatientAadhar')
  int? get patientAadhar;

  @BuiltValueField(wireName: 'PatientDob')
  DateTime? get patientDob;

  @BuiltValueField(wireName: 'PatientMobile')
  int? get patientMobile;

  @BuiltValueField(wireName: 'PatientGender')
  String? get patientGender;

  @BuiltValueField(wireName: 'PatientState')
  String? get patientState;

  @BuiltValueField(wireName: 'PatientAddress')
  String? get patientAddress;

  @BuiltValueField(wireName: 'HospitalName')
  String? get hospitalName;

  @BuiltValueField(wireName: 'ReasonofHospitalization')
  String? get reasonofHospitalization;

  @BuiltValueField(wireName: 'DoctorName')
  String? get doctorName;

  @BuiltValueField(wireName: 'PatientDoa')
  DateTime? get patientDoa;

  @BuiltValueField(wireName: 'MedicalBills')
  String? get medicalBills;

  @BuiltValueField(wireName: 'Documents')
  String? get documents;

  @BuiltValueField(wireName: 'OtherDocuments')
  String? get otherDocuments;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'PatientRelation')
  String? get patientRelation;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FinanceclaimRecordBuilder builder) => builder
    ..patientName = ''
    ..patientAadhar = 0
    ..patientMobile = 0
    ..patientGender = ''
    ..patientState = ''
    ..patientAddress = ''
    ..hospitalName = ''
    ..reasonofHospitalization = ''
    ..doctorName = ''
    ..medicalBills = ''
    ..documents = ''
    ..otherDocuments = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..patientRelation = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Financeclaim');

  static Stream<FinanceclaimRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FinanceclaimRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FinanceclaimRecord._();
  factory FinanceclaimRecord(
          [void Function(FinanceclaimRecordBuilder) updates]) =
      _$FinanceclaimRecord;

  static FinanceclaimRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFinanceclaimRecordData({
  String? patientName,
  int? patientAadhar,
  DateTime? patientDob,
  int? patientMobile,
  String? patientGender,
  String? patientState,
  String? patientAddress,
  String? hospitalName,
  String? reasonofHospitalization,
  String? doctorName,
  DateTime? patientDoa,
  String? medicalBills,
  String? documents,
  String? otherDocuments,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? patientRelation,
}) {
  final firestoreData = serializers.toFirestore(
    FinanceclaimRecord.serializer,
    FinanceclaimRecord(
      (f) => f
        ..patientName = patientName
        ..patientAadhar = patientAadhar
        ..patientDob = patientDob
        ..patientMobile = patientMobile
        ..patientGender = patientGender
        ..patientState = patientState
        ..patientAddress = patientAddress
        ..hospitalName = hospitalName
        ..reasonofHospitalization = reasonofHospitalization
        ..doctorName = doctorName
        ..patientDoa = patientDoa
        ..medicalBills = medicalBills
        ..documents = documents
        ..otherDocuments = otherDocuments
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..patientRelation = patientRelation,
    ),
  );

  return firestoreData;
}
