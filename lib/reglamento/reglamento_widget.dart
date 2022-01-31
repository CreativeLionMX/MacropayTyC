import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ReglamentoWidget extends StatefulWidget {
  const ReglamentoWidget({Key key}) : super(key: key);

  @override
  _ReglamentoWidgetState createState() => _ReglamentoWidgetState();
}

class _ReglamentoWidgetState extends State<ReglamentoWidget> {
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_01.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_02.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_03.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_04.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_05.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_06.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_07.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_08.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_09.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_11.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_12.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_13.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_14.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/correccion_final-Reglamento_Page_15.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.8, -0.78),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                    child: Text(
                      'Reglamento',
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Avenir',
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                    ),
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
