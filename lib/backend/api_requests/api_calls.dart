import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start cemnoww Group Code

class CemnowwGroup {
  static String baseUrl = 'https://www.cemnoww.in';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
  static RegisterCall registerCall = RegisterCall();
  static VerfiyRegistrationOTPCall verfiyRegistrationOTPCall =
      VerfiyRegistrationOTPCall();
  static VerifyLoginOTPCall verifyLoginOTPCall = VerifyLoginOTPCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? mobileNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile": "$mobileNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${CemnowwGroup.baseUrl}/api/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic otp(dynamic response) => getJsonField(
        response,
        r'''$.otp''',
      );
  dynamic mobile(dynamic response) => getJsonField(
        response,
        r'''$.mobile''',
      );
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? mobileNumber = '9769398593',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile": "$mobileNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: '${CemnowwGroup.baseUrl}/api/auth/register/mobile',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VerfiyRegistrationOTPCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? mobile = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Verfiy Registration OTP',
      apiUrl: '${CemnowwGroup.baseUrl}/api/auth/register/mobile',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'otp': otp,
        'mobile': mobile,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }
}

class VerifyLoginOTPCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? mobile = '',
  }) async {
    final ffApiRequestBody = '''
{
  "otp": "$otp",
  "mobile": "$mobile"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify Login OTP',
      apiUrl: '${CemnowwGroup.baseUrl}/api/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End cemnoww Group Code

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
