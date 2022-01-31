// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

// Begin custom action code
Future<dynamic> getUserVisorData(dynamic apiVisorData, String stateName) async {
  dynamic data = apiVisorData["data"];
  for (var element in data) {
    dynamic account = element["account"];
    if (account["nombreCompleto"].toString().toUpperCase() ==
        stateName.toUpperCase()) {
      return element;
    }
  }
  return "{}";
}
