import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences prefs;

  String userName = '';

  String userSalary = '';

  String userDepartment = '';

  String userSubsidiary = '';

  String userPosition = '';

  String userCompleteName = '';

  String totalComisionado = '';

  String userCentro = '';

  String metaAccesorios = '';

  String metaEquipos = '';

  String metaGlobal = '';

  String totalAccesorios = '';

  String totalEquipos = '';

  String totalGlobal = '';

  String numVendedores = '';

  String accVIndividual = '';

  String eqVIndividual = '';

  String baseVendedor = '';

  String minimoVendedor = '';

  String metaVendedor = '';

  String baseGerente = '';

  String minimoGerente = '';

  String metaGerente = '';

  String accMvV = '';

  String eqMvV = '';

  String accFactor = '';

  String eqFactor = '';

  String accPago = '';

  String eqPagos = '';

  String venKd50 = '';

  String venZenfone3 = '';

  String venMotorola = '';

  String abKd50 = '';

  String abZenfone3 = '';

  String abMotorola = '';

  String semana = '';
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
