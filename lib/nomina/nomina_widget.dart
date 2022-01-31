import '../backend/api_requests/api_calls.dart';
import '../conducta/conducta_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../reglamento/reglamento_widget.dart';
import '../visordepago/visordepago_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NominaWidget extends StatefulWidget {
  const NominaWidget({Key key}) : super(key: key);

  @override
  _NominaWidgetState createState() => _NominaWidgetState();
}

class _NominaWidgetState extends State<NominaWidget> {
  ApiCallResponse apiVisorData;
  dynamic userVisorData;
  dynamic userAccountData;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFDFDFD),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 1.44),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.92,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.primaryColor,
                          FlutterFlowTheme.primaryColor
                        ],
                        stops: [0, 0.5],
                        begin: AlignmentDirectional(0, -1),
                        end: AlignmentDirectional(0, 1),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 120),
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-0.35, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-0.45, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Text(
                                              'Total a Percibir : \$',
                                              style: FlutterFlowTheme.title1
                                                  .override(
                                                fontFamily: 'Avenir',
                                                color: FlutterFlowTheme
                                                    .secondaryColor,
                                                fontSize: 20,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-0.45, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Text(
                                              FFAppState().userSalary,
                                              style: FlutterFlowTheme.title1
                                                  .override(
                                                fontFamily: 'Avenir',
                                                color: FlutterFlowTheme
                                                    .secondaryColor,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  40, 0, 40, 0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              apiVisorData =
                                                  await VisorPagoProdCall.call(
                                                fiscalYear: '2022',
                                                workWeek: '1',
                                              );
                                              if (!apiVisorData.succeeded) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Error'),
                                                      content: Text(
                                                          'Ha ocurrido un error al obtener su información'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }
                                              userVisorData = await actions
                                                  .getUserVisorData(
                                                (apiVisorData?.jsonBody ?? ''),
                                                FFAppState().userCompleteName,
                                              );
                                              userAccountData = await actions
                                                  .getVisorAccountData(
                                                userVisorData,
                                              );
                                              setState(() => FFAppState()
                                                          .totalComisionado =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.totalComisionado''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().userCentro =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.centro''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().metaAccesorios =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.metaDeAccesorios''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().metaEquipos =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.metaDeEquipos''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().metaGlobal =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.metaGlobal''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().totalAccesorios =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.totalAccesorios''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().totalEquipos =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.totalEquipos''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().totalGlobal =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.totalVenta''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().numVendedores =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.numDeVendedoresAsignados''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().accVIndividual =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.accesoriosVtaInd''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().eqVIndividual =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.equiposVtaInd''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().baseVendedor =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.porcComisionBaseVendedor''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().minimoVendedor =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.porcComisionMinimoVendedor''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().metaVendedor =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.porcComisionMetaVendedor''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().baseGerente =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.porcComisionBaseGerenteTienda''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().minimoGerente =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.porcComisionMinimoGerenteTienda''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().metaGerente =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.porcComisionMetaGerenteTienda''',
                                                  ).toString());
                                              setState(() => FFAppState()
                                                      .accMvV = getJsonField(
                                                    userAccountData,
                                                    r'''$.porcVentaVsMetaAccesorio''',
                                                  ).toString());
                                              setState(() => FFAppState()
                                                      .eqMvV = getJsonField(
                                                    userAccountData,
                                                    r'''$.porcVtaVsMetaEquipo''',
                                                  ).toString());
                                              setState(() => FFAppState()
                                                      .accFactor = getJsonField(
                                                    userAccountData,
                                                    r'''$.factorAccesorio''',
                                                  ).toString());
                                              setState(() => FFAppState()
                                                      .eqFactor = getJsonField(
                                                    userAccountData,
                                                    r'''$.factorEquipo''',
                                                  ).toString());
                                              setState(() => FFAppState()
                                                      .accPago = getJsonField(
                                                    userAccountData,
                                                    r'''$.pagoAccesorios''',
                                                  ).toString());
                                              setState(() => FFAppState()
                                                      .eqPagos = getJsonField(
                                                    userAccountData,
                                                    r'''$.pagoEquipo''',
                                                  ).toString());
                                              setState(() => FFAppState()
                                                      .venKd50 = getJsonField(
                                                    userAccountData,
                                                    r'''$.mpVentasKd50''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().venZenfone3 =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.mpVentasZenfone3''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().venMotorola =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.mpVentasMotorolaG50''',
                                                  ).toString());
                                              setState(() => FFAppState()
                                                      .abKd50 = getJsonField(
                                                    userAccountData,
                                                    r'''$.mpAbonosKd50''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().abZenfone3 =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.mpAbonosZenfone3''',
                                                  ).toString());
                                              setState(() =>
                                                  FFAppState().abMotorola =
                                                      getJsonField(
                                                    userAccountData,
                                                    r'''$.mpAbonosMotorolaG50''',
                                                  ).toString());
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      VisordepagoWidget(),
                                                ),
                                              );

                                              setState(() {});
                                            },
                                            text: 'VISOR DE CLARIDAD DE PAGO',
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 40,
                                              color: FlutterFlowTheme
                                                  .secondaryColor,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily: 'Avenir',
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius: 50,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  40, 0, 40, 0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'ANTICIPO DE NÓMINA',
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 40,
                                              color: FlutterFlowTheme
                                                  .secondaryColor,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily: 'Avenir',
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius: 50,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  40, 0, 40, 0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'SOLICITAR RECIBO DE NÓMINA',
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 40,
                                              color: FlutterFlowTheme
                                                  .secondaryColor,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily: 'Avenir',
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius: 50,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0, 0.4),
                                          child: Image.asset(
                                            'assets/images/Group_-1.png',
                                            width: 140,
                                            height: 40,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.8, 0.89),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReglamentoWidget(),
                              ),
                            );
                          },
                          child: Text(
                            'Reglamento Interno',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.71, -0.72),
                        child: Text(
                          'Mi Nomina',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.8, 0.89),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ConductaWidget(),
                              ),
                            );
                          },
                          child: Text(
                            'Código de Ética',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 90,
            decoration: BoxDecoration(
              color: Color(0xFFFDFDFD),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(-0.8, 0.3),
                    child: InkWell(
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.primaryColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0.4),
                    child: Image.asset(
                      'assets/images/macrologo.png',
                      width: 140,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.7, 0.3),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                        'assets/images/Smiley.png',
                        width: 30,
                        height: 30,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
