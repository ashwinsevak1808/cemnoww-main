import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start speedcem Group Code

class SpeedcemGroup {
  static String baseUrl = 'https://www.speedycem.co.in';
  static Map<String, String> headers = {};
  static AuthorizationCall authorizationCall = AuthorizationCall();
  static VerifyAuthorizationOTPCall verifyAuthorizationOTPCall =
      VerifyAuthorizationOTPCall();
  static GetUserDetailCall getUserDetailCall = GetUserDetailCall();
  static UpdateUserDetailsCall updateUserDetailsCall = UpdateUserDetailsCall();
  static GetProductsCall getProductsCall = GetProductsCall();
  static AddToCartCall addToCartCall = AddToCartCall();
}

class AuthorizationCall {
  Future<ApiCallResponse> call({
    String? mobileNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile": "$mobileNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Authorization',
      apiUrl: '${SpeedcemGroup.baseUrl}/api/auth/login',
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

class VerifyAuthorizationOTPCall {
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
      callName: 'Verify Authorization OTP',
      apiUrl: '${SpeedcemGroup.baseUrl}/api/auth/otp-verification',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }

  dynamic authToken(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
}

class GetUserDetailCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User Detail',
      apiUrl: '${SpeedcemGroup.baseUrl}/api/userprofile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token $authToken',
      },
      params: {
        'authToken': authToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic username(dynamic response) => getJsonField(
        response,
        r'''$.full_name''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.address''',
      );
  dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.city''',
      );
  dynamic state(dynamic response) => getJsonField(
        response,
        r'''$.state''',
      );
  dynamic zipcode(dynamic response) => getJsonField(
        response,
        r'''$.zip_code''',
      );
}

class UpdateUserDetailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? username = '',
    String? email = '',
    String? address = '',
    String? city = '',
    String? state = '',
    String? zipCode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "full_name": "$username",
  "email": "$email",
  "address": "$address",
  "city": "$city",
  "state": "$state",
  "zip_code": "$zipCode"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User Details',
      apiUrl: '${SpeedcemGroup.baseUrl}/api/userprofile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }

  dynamic username(dynamic response) => getJsonField(
        response,
        r'''$.full_name''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.address''',
      );
  dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.city''',
      );
  dynamic state(dynamic response) => getJsonField(
        response,
        r'''$.state''',
      );
  dynamic zipcode(dynamic response) => getJsonField(
        response,
        r'''$.zip_code''',
      );
}

class GetProductsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Products',
      apiUrl: '${SpeedcemGroup.baseUrl}/api/products/products?',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  dynamic brand(dynamic response) => getJsonField(
        response,
        r'''$[:].brand''',
        true,
      );
  dynamic brandId(dynamic response) => getJsonField(
        response,
        r'''$[:].brand.id''',
        true,
      );
  dynamic brandName(dynamic response) => getJsonField(
        response,
        r'''$[:].brand.brand_name''',
        true,
      );
  dynamic category(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      );
  dynamic categoryId(dynamic response) => getJsonField(
        response,
        r'''$[:].category.id''',
        true,
      );
  dynamic updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updated_at''',
        true,
      );
  dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      );
  dynamic stockQuentity(dynamic response) => getJsonField(
        response,
        r'''$[:].stock_quantity''',
        true,
      );
  dynamic bulkOrder(dynamic response) => getJsonField(
        response,
        r'''$[:].bulk_order''',
        true,
      );
  dynamic rate(dynamic response) => getJsonField(
        response,
        r'''$[:].rate''',
        true,
      );
  dynamic hourDelivery(dynamic response) => getJsonField(
        response,
        r'''$[:].hr_delivery''',
        true,
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
        true,
      );
  dynamic dimensions(dynamic response) => getJsonField(
        response,
        r'''$[:].dimensions''',
        true,
      );
  dynamic grade(dynamic response) => getJsonField(
        response,
        r'''$[:].grade''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
  dynamic categoryName(dynamic response) => getJsonField(
        response,
        r'''$[:].category.category_name''',
        true,
      );
  dynamic cart(dynamic response) => getJsonField(
        response,
        r'''$[:].cart''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].img''',
        true,
      );
  dynamic skuCode(dynamic response) => getJsonField(
        response,
        r'''$[:].sku''',
        true,
      );
}

class AddToCartCall {
  Future<ApiCallResponse> call({
    String? quentity = '',
    String? skuCode = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "qty": "$quentity",
  "sku": "$skuCode"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add to Cart',
      apiUrl: '${SpeedcemGroup.baseUrl}/api/add-to-cart',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token $authToken',
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

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.detail''',
      );
}

/// End speedcem Group Code

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
