import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreateUserCall {
  static Future<ApiCallResponse> call({
    String? userType = '',
    String? name = '',
    String? location = '',
    String? phone = '',
  }) {
    final body = '''
{
"userType":"${userType}",
"name":"${name}",
"location":"${location}",
"phone":"${phone}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUser',
      apiUrl: 'http://3.108.216.156:7000/api/helpcorner/createUser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetUsersCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? id = '',
    String? phone = '',
    String? location = '',
    String? userType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUsers',
      apiUrl: 'http://3.108.216.156:7000/api/helpcorner/fetchUserByPhone',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'location': location,
        'userType': userType,
        'phone': phone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[0].id''',
      );
  static dynamic userType(dynamic response) => getJsonField(
        response,
        r'''$[0].userType''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[0].name''',
      );
  static dynamic location(dynamic response) => getJsonField(
        response,
        r'''$[0].location''',
      );
  static dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$[0].phone''',
      );
}

class SendMessageToDonarCall {
  static Future<ApiCallResponse> call({
    String? userType = '',
    String? name = '',
    String? location = '',
    String? qty = '',
    String? phone = '',
  }) {
    final body = '''
{
  "userType": "donar",
  "location": "${location}",
  "phone": "${phone}",
  "qty": "${qty}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendMessageToDonar',
      apiUrl: 'http://3.108.216.156:7000/api/helpcorner/sendMessageToDonar',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[0].name''',
      );
  static dynamic location(dynamic response) => getJsonField(
        response,
        r'''$[0].location''',
      );
  static dynamic qty(dynamic response) => getJsonField(
        response,
        r'''$[0].qty''',
      );
  static dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$[0].phone''',
      );
}

class SendMessageToDistributorCall {
  static Future<ApiCallResponse> call({
    String? userType = '',
    String? location = '',
    String? qty = '',
    String? name = '',
    String? phone = '',
    String? address = '',
  }) {
    final body = '''
{
  "userType": "distributor",
  "qty": "${qty}",
  "name": "${name}",
  "location": "${location}",
  "phone": "${phone}",
  "address": "${address}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendMessageToDistributor',
      apiUrl:
          'http://3.108.216.156:7000/api/helpcorner/sendMessageToDistributor',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[0].name''',
      );
  static dynamic location(dynamic response) => getJsonField(
        response,
        r'''$[0].location''',
      );
  static dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$[0].phone''',
      );
  static dynamic qty(dynamic response) => getJsonField(
        response,
        r'''$[0].qty''',
      );
}

class FetchUserByTypeCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? location = '',
    String? userType = '',
    String? qty = '',
    String? phone = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'fetchUserByType',
      apiUrl: 'http://3.108.216.156:7000/api/helpcorner/fetchUserByType',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'location': location,
        'userType': userType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[0].id''',
        true,
      );
  static dynamic userType(dynamic response) => getJsonField(
        response,
        r'''$[0].userType''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[0].name''',
      );
  static dynamic location(dynamic response) => getJsonField(
        response,
        r'''$[0].location''',
      );
  static dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$[0].phone''',
      );
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
