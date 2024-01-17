import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ListLeaveByStaffIDCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ListLeaveByStaffID',
      apiUrl: 'https://api.lcsb.com.my/api/leaveservice/bystaffID/$id',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key': '44932d31-tzlt-3500-kyzm-8fe08d0df42b',
      },
      params: {
        'id': "null",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? leaveID(dynamic response) => (getJsonField(
        response,
        r'''$[:].leaveId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? staffID(dynamic response) => (getJsonField(
        response,
        r'''$[:].staffId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? leaveType(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? leaveReason(dynamic response) => (getJsonField(
        response,
        r'''$[:].reason''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? leaveDateApply(dynamic response) => (getJsonField(
        response,
        r'''$[:].dateapply''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? leaveDateStart(dynamic response) => (getJsonField(
        response,
        r'''$[:].datestart''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? leaveDays(dynamic response) => (getJsonField(
        response,
        r'''$[:].days''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? leaveStatus(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ListLeaveByStaffIDAndStatusCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? status = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ListLeaveByStaffIDAndStatus',
      apiUrl:
          'https://api.lcsb.com.my/api/leaveservice/getleavewithstatus/$id/$status',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key': '44932d31-tzlt-3500-kyzm-8fe08d0df42b',
        'Content-Type': 'application/json',
      },
      params: {
        'id': "null",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? leaveID(dynamic response) => (getJsonField(
        response,
        r'''$[:].leaveId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? staffID(dynamic response) => (getJsonField(
        response,
        r'''$[:].staffId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? leaveType(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? leaveReason(dynamic response) => (getJsonField(
        response,
        r'''$[:].reason''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? leaveDateApply(dynamic response) => (getJsonField(
        response,
        r'''$[:].dateapply''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? leaveDateStart(dynamic response) => (getJsonField(
        response,
        r'''$[:].datestart''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? leaveDays(dynamic response) => (getJsonField(
        response,
        r'''$[:].days''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? leaveStatus(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class StaffInfoCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'StaffInfo',
      apiUrl: 'https://api.lcsb.com.my/api/staff/general/byemail/$email',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key': '44932d31-tzlt-3500-kyzm-8fe08d0df42b',
      },
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? staffID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.staffid''',
      ));
  static String? staffName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? staffDept(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.department''',
      ));
  static String? staffPost(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.position''',
      ));
  static String? staffImage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.imageUrl''',
      ));
}

class ListDepartmentCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ListDepartment',
      apiUrl: 'https://api.lcsb.com.my/api/department/all',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-API-Key': '44932d31-tzlt-3500-kyzm-8fe08d0df42b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LeaveByIDCall {
  static Future<ApiCallResponse> call({
    String? id = 'id',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LeaveByID',
      apiUrl: 'https://api.lcsb.com.my/api/leaveservice/$id',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key': '44932d31-tzlt-3500-kyzm-8fe08d0df42b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? leaveId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.leaveId''',
      ));
  static String? staffId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.staffId''',
      ));
  static String? typr(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  static String? reason(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reason''',
      ));
  static int? days(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.days''',
      ));
  static String? dateapply(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dateapply''',
      ));
  static String? datestart(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.datestart''',
      ));
  static String? dateend(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dateend''',
      ));
  static String? supervisorId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.supervisorId''',
      ));
  static String? supervisorDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.supervisorDate''',
      ));
  static String? headId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.headId''',
      ));
  static String? headDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.headDate''',
      ));
  static String? checkId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.checkId''',
      ));
  static String? checkDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.checkDate''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? year(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.year''',
      ));
  static String? period(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.period''',
      ));
}

class CarDetailByPlateNoCall {
  static Future<ApiCallResponse> call({
    String? plateNo = 'plateNo',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CarDetailByPlateNo',
      apiUrl:
          'https://api.lcsb.com.my/api/kenderaanservice/detailcarbyplateno/$plateNo',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key': '44932d31-tzlt-3500-kyzm-8fe08d0df42b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? carId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].carId''',
      ));
  static String? plateNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].plateNo''',
      ));
  static String? descp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].descp''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  static String? driverId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].driverId''',
      ));
}

class ListClaimByStaffIdAndYearCall {
  static Future<ApiCallResponse> call({
    String? id = 'id',
    String? year = 'year',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ListClaimByStaffIdAndYear',
      apiUrl:
          'https://api.lcsb.com.my/api/claim/bystaffIDAndYear/$id/$year',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key': '44932d31-tzlt-3500-kyzm-8fe08d0df42b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? claimId(dynamic response) => (getJsonField(
        response,
        r'''$[:].claimId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? staffId(dynamic response) => (getJsonField(
        response,
        r'''$[:].staffId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? staffName(dynamic response) => (getJsonField(
        response,
        r'''$[:].staffName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? loccode(dynamic response) => (getJsonField(
        response,
        r'''$[:].loccode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? deptId(dynamic response) => (getJsonField(
        response,
        r'''$[:].deptId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? postId(dynamic response) => (getJsonField(
        response,
        r'''$[:].postId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? postDesc(dynamic response) => (getJsonField(
        response,
        r'''$[:].postDesc''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? year(dynamic response) => (getJsonField(
        response,
        r'''$[:].year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? period(dynamic response) => (getJsonField(
        response,
        r'''$[:].period''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? remark(dynamic response) => (getJsonField(
        response,
        r'''$[:].remark''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? pvno(dynamic response) => getJsonField(
        response,
        r'''$[:].pvno''',
        true,
      ) as List?;
}

class ClaimByClaimIdCall {
  static Future<ApiCallResponse> call({
    String? id = 'id',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'claimByClaimId',
      apiUrl: 'https://api.lcsb.com.my/api/claim/byClaimID/$id',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key': '44932d31-tzlt-3500-kyzm-8fe08d0df42b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ClaimByClaimDetailCall {
  static Future<ApiCallResponse> call({
    String? id = 'id',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'claimByClaimDetail',
      apiUrl: 'https://api.lcsb.com.my/api/claim/byClaimDetail/$id',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key': '44932d31-tzlt-3500-kyzm-8fe08d0df42b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? claimDetailId(dynamic response) => (getJsonField(
        response,
        r'''$[:].claimDetailId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? claimId(dynamic response) => (getJsonField(
        response,
        r'''$[:].claimId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? claimTypeId(dynamic response) => (getJsonField(
        response,
        r'''$[:].claimTypeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? claimTypename(dynamic response) => (getJsonField(
        response,
        r'''$[:].claimTypename''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? position(dynamic response) => (getJsonField(
        response,
        r'''$[:].position''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? remark(dynamic response) => (getJsonField(
        response,
        r'''$[:].remark''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? noInvoice(dynamic response) => (getJsonField(
        response,
        r'''$[:].noInvoice''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? imageurl(dynamic response) => getJsonField(
        response,
        r'''$[:].imageurl''',
        true,
      ) as List?;
  static List<int>? totalRate(dynamic response) => (getJsonField(
        response,
        r'''$[:].totalRate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
