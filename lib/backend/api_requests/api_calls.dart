import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class MacroUsersCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'MacroUsers',
      apiUrl: 'http://apiadn.macropay.cloud:5000/Employees/getAll',
      callType: ApiCallType.GET,
      headers: {
        'authorization': 'Basic QUROQVBQOk1QMjAyMS1BRE4=',
      },
      params: {},
      returnBody: true,
    );
  }
}

class VisorPagoCall {
  static Future<ApiCallResponse> call({
    String centerId = '',
    String fiscalYear = '',
    String workWeek = '',
  }) {
    final body = '''
{
  "centerId": "${centerId}",
  "fiscalYear": "${fiscalYear}",
  "workWeek": "${workWeek}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'VisorPago',
      apiUrl: 'http://45.190.236.104:8080/service/find/commission',
      callType: ApiCallType.POST,
      headers: {
        'authorization': 'Basic Y3JlYXRpdmVVc2VyOnAvdU5lOSV6bUVhTmp1Ww==',
      },
      params: {
        'centerId': centerId,
        'fiscalYear': fiscalYear,
        'workWeek': workWeek,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class VisorPagoProdCall {
  static Future<ApiCallResponse> call({
    String fiscalYear = '',
    String workWeek = '',
    String centerId = '',
  }) {
    final body = '''
{
  "centerId": "${centerId}",
  "fiscalYear": "${fiscalYear}",
  "workWeek": "${workWeek}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'VisorPago Prod',
      apiUrl: 'https://pxprd.macropay.mx/service/find/commission',
      callType: ApiCallType.POST,
      headers: {
        'authorization': 'Basic Y3JlYXRpdmVVc2VyOnAvdU5lOSV6bUVhTmp1Ww==',
      },
      params: {
        'fiscalYear': fiscalYear,
        'workWeek': workWeek,
        'centerId': centerId,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}
