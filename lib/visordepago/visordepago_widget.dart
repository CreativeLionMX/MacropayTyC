import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class VisordepagoWidget extends StatefulWidget {
  const VisordepagoWidget({Key key}) : super(key: key);

  @override
  _VisordepagoWidgetState createState() => _VisordepagoWidgetState();
}

class _VisordepagoWidgetState extends State<VisordepagoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF014BC4),
      body: Stack(
        children: [
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.56, -0.72),
                      child: Text(
                        'Visor de Claridad de Pago',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          color: Color(0xFFFDFDFD),
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1.04),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.8,
                        decoration: BoxDecoration(
                          color: Color(0xFFFDFDFD),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 25, 15, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Hola',
                                    style: FlutterFlowTheme.title2,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      FFAppState().userName,
                                      style: FlutterFlowTheme.title2,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Este es tu resumen de pago:',
                                            style: FlutterFlowTheme.bodyText1,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: FFAppState().semana,
                                          options: FFButtonOptions(
                                            width: 130,
                                            height: 30,
                                            color: Color(0xFF014BC4),
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Avenir',
                                              color: Color(0xFFFDFDFD),
                                              useGoogleFonts: false,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 23),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 20),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(-1, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Text(
                                                    'Grupo Vendedor :',
                                                    style: FlutterFlowTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(-1, 0),
                                                child: Text(
                                                  FFAppState().userDepartment,
                                                  style: FlutterFlowTheme
                                                      .bodyText1,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(-1, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Text(
                                                    'Puesto :',
                                                    style: FlutterFlowTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(-1, 0),
                                                child: Text(
                                                  FFAppState().userPosition,
                                                  style: FlutterFlowTheme
                                                      .bodyText1,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(-1, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Text(
                                                    'Sucursal :',
                                                    style: FlutterFlowTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(-1, 0),
                                                child: Text(
                                                  FFAppState().userSubsidiary,
                                                  style: FlutterFlowTheme
                                                      .bodyText1,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.99, -7.99),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 10, 0, 0),
                                                      child: Text(
                                                        'Centro :  ',
                                                        style: FlutterFlowTheme
                                                            .bodyText1,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.99, -7.99),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Text(
                                                        FFAppState().userCentro,
                                                        style: FlutterFlowTheme
                                                            .bodyText1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.99, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Text(
                                                    'Percepciones',
                                                    style:
                                                        FlutterFlowTheme.title2,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.22, 0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.85,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF014BC4),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0),
                                                      bottomRight:
                                                          Radius.circular(0),
                                                      topLeft:
                                                          Radius.circular(30),
                                                      topRight:
                                                          Radius.circular(30),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: Text(
                                                      'Metas',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color:
                                                            Color(0xFFFDFDFD),
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.85,
                                            height: 170,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(30),
                                                bottomRight:
                                                    Radius.circular(30),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 15, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.3, -0.83),
                                                            child: Text(
                                                              'Global',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                fontFamily:
                                                                    'Avenir',
                                                                color: FlutterFlowTheme
                                                                    .primaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.02,
                                                                    -0.83),
                                                            child: Text(
                                                              'Equipos',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                fontFamily:
                                                                    'Avenir',
                                                                color: FlutterFlowTheme
                                                                    .primaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.45,
                                                                    -0.83),
                                                            child: Text(
                                                              'Accesorios',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                fontFamily:
                                                                    'Avenir',
                                                                color: FlutterFlowTheme
                                                                    .primaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.4, -0.83),
                                                            child: Text(
                                                              'Sucursal',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                fontFamily:
                                                                    'Avenir',
                                                                color: FlutterFlowTheme
                                                                    .primaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.02,
                                                                    -0.83),
                                                            child: Text(
                                                              'Sucursal',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                fontFamily:
                                                                    'Avenir',
                                                                color: FlutterFlowTheme
                                                                    .primaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.3,
                                                                    -0.83),
                                                            child: Text(
                                                              'Sucursal',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                fontFamily:
                                                                    'Avenir',
                                                                color: FlutterFlowTheme
                                                                    .primaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.71, -0.83),
                                                          child: Text(
                                                            FFAppState()
                                                                .metaGlobal,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Avenir',
                                                              color: FlutterFlowTheme
                                                                  .primaryColor,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.02, -0.83),
                                                          child: Text(
                                                            FFAppState()
                                                                .metaEquipos,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Avenir',
                                                              color: FlutterFlowTheme
                                                                  .primaryColor,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -0.79, -0.83),
                                                          child: Text(
                                                            FFAppState()
                                                                .metaAccesorios,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Avenir',
                                                              color: FlutterFlowTheme
                                                                  .primaryColor,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              useGoogleFonts:
                                                                  false,
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
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 15, 0, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.85,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF014BC4),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: Text(
                                                      'Importe de Factores',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color:
                                                            Color(0xFFFDFDFD),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      15, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.3,
                                                                          -0.83),
                                                                  child: Text(
                                                                    'Global',
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Avenir',
                                                                      color: FlutterFlowTheme
                                                                          .primaryColor,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.02,
                                                                          -0.83),
                                                                  child: Text(
                                                                    'Equipos',
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Avenir',
                                                                      color: FlutterFlowTheme
                                                                          .primaryColor,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -0.45,
                                                                          -0.83),
                                                                  child: Text(
                                                                    'Accesorios',
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Avenir',
                                                                      color: FlutterFlowTheme
                                                                          .primaryColor,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      10, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.4,
                                                                          -0.83),
                                                                  child: Text(
                                                                    'Sucursal',
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Avenir',
                                                                      color: FlutterFlowTheme
                                                                          .primaryColor,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.02,
                                                                          -0.83),
                                                                  child: Text(
                                                                    'Sucursal',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Avenir',
                                                                      color: FlutterFlowTheme
                                                                          .primaryColor,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -0.3,
                                                                          -0.83),
                                                                  child: Text(
                                                                    'Sucursal',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Avenir',
                                                                      color: FlutterFlowTheme
                                                                          .primaryColor,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.71,
                                                                        -0.83),
                                                                child: Text(
                                                                  FFAppState()
                                                                      .metaGlobal,
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Avenir',
                                                                    color: FlutterFlowTheme
                                                                        .primaryColor,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.02,
                                                                        -0.83),
                                                                child: Text(
                                                                  FFAppState()
                                                                      .metaEquipos,
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Avenir',
                                                                    color: FlutterFlowTheme
                                                                        .primaryColor,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -0.79,
                                                                        -0.83),
                                                                child: Text(
                                                                  FFAppState()
                                                                      .metaAccesorios,
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Avenir',
                                                                    color: FlutterFlowTheme
                                                                        .primaryColor,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.85,
                                            height: 170,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(30),
                                                bottomRight:
                                                    Radius.circular(30),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.82, -0.25),
                                                  child: Text(
                                                    FFAppState().metaVendedor,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.72, 0.13),
                                                  child: Text(
                                                    'Meta + 100:\n\nMínimo + 85:\n\nBase:',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.65, -0.83),
                                                  child: Text(
                                                    'Vendedor',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.86, 0.25),
                                                  child: Text(
                                                    FFAppState().minimoVendedor,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.77, 0.69),
                                                  child: Text(
                                                    FFAppState().baseVendedor,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.67, 0.25),
                                                  child: Text(
                                                    FFAppState().minimoGerente,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.66, 0.68),
                                                  child: Text(
                                                    FFAppState().baseGerente,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.64, -0.2),
                                                  child: Text(
                                                    FFAppState().metaGerente,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.54, -0.85),
                                                  child: Text(
                                                    'Gerente',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.62, 0.14),
                                                  child: Text(
                                                    'Meta + 100:\n\nMínimo + 85:\n\nBase:',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 15, 0, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.85,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  'Venta Sucursal',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Avenir',
                                                    color: Color(0xFFFDFDFD),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.85,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFD300),
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.79, -0.82),
                                                  child: Text(
                                                    'Accesorios',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.85, 0.08),
                                                  child: Text(
                                                    'No de\nVendedores',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.98, 0.56),
                                                  child: Text(
                                                    FFAppState().numVendedores,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.94, -0.45),
                                                  child: Text(
                                                    FFAppState()
                                                        .totalAccesorios,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.71, -0.82),
                                                  child: Text(
                                                    'Global',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0.08),
                                                  child: Text(
                                                    'Gte. Vta Ind.\nAccesorios',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.02, -0.82),
                                                  child: Text(
                                                    'Equipos',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.83, 0.08),
                                                  child: Text(
                                                    'Gte. Vta Ind.\nEquipos',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.89, 0.56),
                                                  child: Text(
                                                    FFAppState().eqVIndividual,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.07, -0.47),
                                                  child: Text(
                                                    FFAppState().totalEquipos,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0.55),
                                                  child: Text(
                                                    FFAppState().accVIndividual,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.85, -0.49),
                                                  child: Text(
                                                    FFAppState().totalGlobal,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.85,
                                              height: 350,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(30),
                                                  bottomRight:
                                                      Radius.circular(30),
                                                  topLeft: Radius.circular(0),
                                                  topRight: Radius.circular(0),
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.89, 0.34),
                                                    child: Text(
                                                      'Venta Individual:\n\nDistribución de\nVta. Gte:\n\nVenta Total:\n\n% Venta\nVs Meta:\n\nFactor:\n\nTotal Comisión\nde Venta:',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.91, -0.84),
                                                    child: Text(
                                                      'Tipo de comisión:',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.25, -0.85),
                                                    child: Text(
                                                      'Accesorios',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.21, 0.43),
                                                    child: Text(
                                                      FFAppState().accFactor,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.24, -0.56),
                                                    child: Text(
                                                      FFAppState()
                                                          .accVIndividual,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.17, 0.71),
                                                    child: Text(
                                                      FFAppState().accPago,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.2, 0.21),
                                                    child: Text(
                                                      FFAppState().accMvV,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.23, -0.04),
                                                    child: Text(
                                                      FFAppState()
                                                          .totalAccesorios,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.15, 0.4),
                                                    child: Container(
                                                      width: 1,
                                                      height: 320,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.21, -0.3),
                                                    child: Text(
                                                      ' ',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.02, -0.56),
                                                    child: Text(
                                                      FFAppState()
                                                          .eqVIndividual,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.88, 0.71),
                                                    child: Text(
                                                      FFAppState().eqPagos,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.9, 0.43),
                                                    child: Text(
                                                      FFAppState().eqFactor,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.86, 0.2),
                                                    child: Text(
                                                      FFAppState().eqMvV,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.88, -0.85),
                                                    child: Text(
                                                      'Equipos',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.02, -0.03),
                                                    child: Text(
                                                      FFAppState().totalEquipos,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.8, -0.3),
                                                    child: Text(
                                                      ' ',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 15, 0, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.85,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  'Macropay',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Avenir',
                                                    color: Color(0xFFFDFDFD),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.85,
                                            height: 170,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(30),
                                                bottomRight:
                                                    Radius.circular(30),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.9, 0.45),
                                                  child: Text(
                                                    'Motorola\nG50',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.79, -0.83),
                                                  child: Text(
                                                    'Marca',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.85, 0.01),
                                                  child: Text(
                                                    'Zenfone3',
                                                    style: FlutterFlowTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.78, -0.41),
                                                  child: Text(
                                                    'Kd50',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.34, -0.41),
                                                  child: Text(
                                                    FFAppState().venKd50,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.3, -0.82),
                                                  child: Text(
                                                    'Venta',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.36, -0.01),
                                                  child: Text(
                                                    FFAppState().venZenfone3,
                                                    style: FlutterFlowTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.33, 0.44),
                                                  child: Text(
                                                    FFAppState().venMotorola,
                                                    style: FlutterFlowTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.23, -0.41),
                                                  child: Text(
                                                    FFAppState().abKd50,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.27, 0.46),
                                                  child: Text(
                                                    FFAppState().abMotorola,
                                                    style: FlutterFlowTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.25, 0),
                                                  child: Text(
                                                    FFAppState().abZenfone3,
                                                    style: FlutterFlowTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.25, -0.83),
                                                  child: Text(
                                                    'Abono',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.8, 0.07),
                                                  child: Text(
                                                    ' ',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.87, -0.83),
                                                  child: Text(
                                                    'Comisión',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 15, 0, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.85,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  'Bonos',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Avenir',
                                                    color: Color(0xFFFDFDFD),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.85,
                                            height: 170,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(30),
                                                bottomRight:
                                                    Radius.circular(30),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.45, -0.83),
                                                  child: Text(
                                                    'Tipo',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.65, 0.09),
                                                  child: Text(
                                                    '_________________\n\n_________________\n\n_________________',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.5, -0.82),
                                                  child: Text(
                                                    'Comisión',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.7, 0.08),
                                                  child: Text(
                                                    '_________________\n\n_________________\n\n_________________',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 15, 0, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.85,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  'Otras Comisiones',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Avenir',
                                                    color: Color(0xFFFDFDFD),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.85,
                                            height: 130,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(30),
                                                bottomRight:
                                                    Radius.circular(30),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.7, -0.83),
                                                  child: Text(
                                                    'Tipo',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.77, 0.14),
                                                  child: Text(
                                                    '__________\n\n__________',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, -0.83),
                                                  child: Text(
                                                    'Venta Ind.',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0.14),
                                                  child: Text(
                                                    '__________\n\n__________',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.71, -0.83),
                                                  child: Text(
                                                    'Comisión',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.77, 0.14),
                                                  child: Text(
                                                    '__________\n\n__________',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 15, 0, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.85,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  'Otros',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Avenir',
                                                    color: Color(0xFFFDFDFD),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.85,
                                            height: 130,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(30),
                                                bottomRight:
                                                    Radius.circular(30),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.7, -0.83),
                                                  child: Text(
                                                    'Tipo',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.77, 0.14),
                                                  child: Text(
                                                    '__________\n\n__________',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.05, -0.83),
                                                  child: Text(
                                                    'Plazas',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0.14),
                                                  child: Text(
                                                    '__________\n\n__________',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.71, -0.83),
                                                  child: Text(
                                                    'Comisión',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.77, 0.14),
                                                  child: Text(
                                                    '__________\n\n__________',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 15, 0, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.85,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  'Cuentas por Cobrar',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Avenir',
                                                    color: Color(0xFFFDFDFD),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.85,
                                            height: 130,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(30),
                                                bottomRight:
                                                    Radius.circular(30),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.05, -0.18),
                                                  child: Text(
                                                    '_______________________________________\n\n_______________________________________\n\n_______________________________________',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Avenir',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 15, 0, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.85,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  'Otros',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Avenir',
                                                    color: Color(0xFFFDFDFD),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.22, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 20),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.85,
                                              height: 130,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(30),
                                                  bottomRight:
                                                      Radius.circular(30),
                                                  topLeft: Radius.circular(0),
                                                  topRight: Radius.circular(0),
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.7, -0.83),
                                                    child: Text(
                                                      'Tipo',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.77, 0.14),
                                                    child: Text(
                                                      '__________\n\n__________',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0.14),
                                                    child: Text(
                                                      '__________\n\n__________',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.01, -0.85),
                                                    child: Text(
                                                      'Monto',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.71, -0.83),
                                                    child: Text(
                                                      'Saldo',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.77, 0.14),
                                                    child: Text(
                                                      '__________\n\n__________',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Avenir',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.96, 0),
                                            child: Text(
                                              'Grupo Vendedor :',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir',
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.07, 0),
                                            child: Text(
                                              FFAppState().userDepartment,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir',
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.96, 0),
                                            child: Text(
                                              'Grupo Vendedor :',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir',
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.07, 0),
                                            child: Text(
                                              FFAppState().userDepartment,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir',
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.99, 1.01),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFF014BC4),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Total de percepciónes',
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Avenir',
                                  color: Color(0xFFFDFDFD),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: Text(
                                  FFAppState().totalComisionado,
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Avenir',
                                    color: Color(0xFFFDFDFD),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    useGoogleFonts: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, 1.01),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFD300),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Total Pagado',
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Avenir',
                                  color: FlutterFlowTheme.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: Text(
                                  '\$',
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Avenir',
                                    color: FlutterFlowTheme.primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    useGoogleFonts: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
