// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

// Begin custom action code
Future<dynamic> getUserFromEmail(
  String email,
  dynamic apiResponse,
) async {
  // Add your function code here!
  if (apiResponse.isNotEmpty) {
    for (var element in apiResponse) {
      String firstName =
          element['nombre'].toString().split(' ')[0].toLowerCase();
      String lastName = element['apellido_paterno'].toString().toLowerCase();
      String elementEmail = '$firstName.$lastName@macropay.mx';

      if (email.toUpperCase() == elementEmail.toUpperCase()) {
        return element;
      }
    }
  }
}
