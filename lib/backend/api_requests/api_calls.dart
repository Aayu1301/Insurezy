import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class XanoLoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Xano login',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:zBxcgb-t/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic authorization(dynamic response) => getJsonField(
        response,
        r'''$.authToken''',
      );
}

class GetEmpCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Emp',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:zBxcgb-t/employee1',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].Name''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].Eid''',
      );
  static dynamic dependents(dynamic response) => getJsonField(
        response,
        r'''$[:].Dependents''',
        true,
      );
  static dynamic pDetails(dynamic response) => getJsonField(
        response,
        r'''$[:].Policy_Details''',
        true,
      );
  static dynamic claim(dynamic response) => getJsonField(
        response,
        r'''$[:]._claim_request_of_user''',
        true,
      );
  static dynamic result(dynamic response) => getJsonField(
        response,
        r'''$.result_1''',
        true,
      );
  static dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$.var_1''',
      );
}

class ClaimRequestCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Claim Request',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:zBxcgb-t/claim_request1',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic claim(dynamic response) => getJsonField(
        response,
        r'''$.claimrequest''',
        true,
      );
  static dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$.var_1''',
      );
}

class ClaimCall {
  static Future<ApiCallResponse> call({
    String? pName = '',
    int? pAadhar,
    String? pDob = '',
    int? pMob,
    String? pAdd = '',
    String? pGender = '',
    String? relationship = '',
    String? pBilllink = '',
    String? pDischargeLink = '',
    String? pOtherLink = '',
    String? pStatus = 'Submitted',
    int? userId,
    int? empId,
    int? aamount = 0,
    String? claimid = '',
    String? type = '',
    String? hospitalName = '',
    String? reasonofhospitalization = '',
    String? doa = '',
    String? doctorName = '',
  }) {
    final body = '''
{
  "P_Name": "${pName}",
  "P_AadharCard_No": ${pAadhar},
  "P_DOB": "${pDob}",
  "P_Mobile": ${pMob},
  "P_Address": "${pAdd}",
  "P_Gender": "${pGender}",
  "Relationship": "${relationship}",
  "HName": "${hospitalName}",
  "Reason": "${reasonofhospitalization}",
  "Dateof_Hospitalisation": "${doa}",
  "DocName": "${doctorName}",
  "Discharge_Summary_link": "${pDischargeLink}",
  "OtherDocuments_Link": "${pOtherLink}",
  "Bills_Link": "${pBilllink}",
  "Status": "${pStatus}",
  "user_id": ${userId},
  "employee_id": "${empId}",
  "Aamount": ${aamount},
  "ClaimId": "${claimid}",
  "request_type": "${type}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Claim',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:zBxcgb-t/claim_request',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class AdvertisementCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'advertisement',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:zBxcgb-t/advertisement',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic res(dynamic response) => getJsonField(
        response,
        r'''$.res''',
        true,
      );
  static dynamic ad(dynamic response) => getJsonField(
        response,
        r'''$.res[:].Ad_banner''',
        true,
      );
  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.res[:].Ad_link''',
        true,
      );
}

class TopupCall {
  static Future<ApiCallResponse> call({
    String? newVariable = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'topup',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:zBxcgb-t/supertopup',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': newVariable,
      },
      returnBody: true,
    );
  }
}

class AddtopupCall {
  static Future<ApiCallResponse> call({
    int? id,
    int? sid,
  }) {
    final body = '''
{
  "id": ${id},
  "sid": ${sid}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addtopup',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:zBxcgb-t/employee/{employee_id}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class PasswordCall {
  static Future<ApiCallResponse> call({
    int? userId,
    String? password = '',
  }) {
    final body = '''
{
  "user_id": ${userId},
  "pass": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'password',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:zBxcgb-t/editpassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class SupertopupGetCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'supertopup get',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:zBxcgb-t/supertopupget',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}
