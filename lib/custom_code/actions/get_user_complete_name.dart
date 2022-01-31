// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

// Begin custom action code
Future<String> getUserCompleteName(dynamic userData) async {
  if (userData.isNotEmpty) {
    String name = userData["nombre"].toString();
    String lName = userData["apellido_paterno"].toString();
    String sName = userData["apellido_materno"].toString();
    return "$name $lName $sName";
  } else {
    return "";
  }
}
