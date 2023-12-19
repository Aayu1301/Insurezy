import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'financeclaim_struct.g.dart';

abstract class FinanceclaimStruct
    implements Built<FinanceclaimStruct, FinanceclaimStructBuilder> {
  static Serializer<FinanceclaimStruct> get serializer =>
      _$financeclaimStructSerializer;

  @BuiltValueField(wireName: 'PatientName')
  String? get patientName;

  @BuiltValueField(wireName: 'PAadhar')
  int? get pAadhar;

  @BuiltValueField(wireName: 'PDob')
  DateTime? get pDob;

  @BuiltValueField(wireName: 'PMobile')
  int? get pMobile;

  @BuiltValueField(wireName: 'PGender')
  String? get pGender;

  @BuiltValueField(wireName: 'PState')
  String? get pState;

  @BuiltValueField(wireName: 'Paddress')
  String? get paddress;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(FinanceclaimStructBuilder builder) => builder
    ..patientName = ''
    ..pAadhar = 0
    ..pMobile = 0
    ..pGender = ''
    ..pState = ''
    ..paddress = ''
    ..firestoreUtilData = FirestoreUtilData();

  FinanceclaimStruct._();
  factory FinanceclaimStruct(
          [void Function(FinanceclaimStructBuilder) updates]) =
      _$FinanceclaimStruct;
}

FinanceclaimStruct createFinanceclaimStruct({
  String? patientName,
  int? pAadhar,
  DateTime? pDob,
  int? pMobile,
  String? pGender,
  String? pState,
  String? paddress,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FinanceclaimStruct(
      (f) => f
        ..patientName = patientName
        ..pAadhar = pAadhar
        ..pDob = pDob
        ..pMobile = pMobile
        ..pGender = pGender
        ..pState = pState
        ..paddress = paddress
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

FinanceclaimStruct? updateFinanceclaimStruct(
  FinanceclaimStruct? financeclaim, {
  bool clearUnsetFields = true,
}) =>
    financeclaim != null
        ? (financeclaim.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addFinanceclaimStructData(
  Map<String, dynamic> firestoreData,
  FinanceclaimStruct? financeclaim,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (financeclaim == null) {
    return;
  }
  if (financeclaim.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && financeclaim.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final financeclaimData =
      getFinanceclaimFirestoreData(financeclaim, forFieldValue);
  final nestedData =
      financeclaimData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = financeclaim.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getFinanceclaimFirestoreData(
  FinanceclaimStruct? financeclaim, [
  bool forFieldValue = false,
]) {
  if (financeclaim == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(FinanceclaimStruct.serializer, financeclaim);

  // Add any Firestore field values
  financeclaim.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFinanceclaimListFirestoreData(
  List<FinanceclaimStruct>? financeclaims,
) =>
    financeclaims?.map((f) => getFinanceclaimFirestoreData(f, true)).toList() ??
    [];
