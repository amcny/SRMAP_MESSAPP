import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetorderIdCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? orderId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "$id"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getorderId',
      apiUrl: 'https://api.razorpay.com/v1/payments/$id',
      callType: ApiCallType.POST,
      headers: {
        'x-client': 'rzp_test_QAGI44Jj9kDhup',
        'x-client-secret': 'pYaGG8qvKODB0ovEzx3Oi2HA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
