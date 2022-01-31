// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

// Begin custom action code
Future<dynamic> getVisorAccountData(dynamic userVisorData) async {
  if (userVisorData.isNotEmpty && userVisorData != "{}") {
    return userVisorData["account"];
  }
  return "{}";
}
