import '../auth/auth_util.dart';
import '../conducta/conducta_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login/login_widget.dart';
import '../reglamento/reglamento_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({Key key}) : super(key: key);

  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  TextEditingController emailController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController(text: currentUserEmail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFDFDFD),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, -0.5),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0x00FDFDFD),
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.primaryColor,
                  width: 8,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.03, -0.04),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 40,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.primaryColor,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    color: Color(0xFFFDFDFD),
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Text(
                                      FFAppState().userName,
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Avenir',
                                        color: Color(0xFFFDFDFD),
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
                          alignment: AlignmentDirectional(-0.02, 0.11),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 40,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.primaryColor,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.mail_outlined,
                                    color: Color(0xFFFDFDFD),
                                    size: 24,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          18, 0, 0, 0),
                                      child: TextFormField(
                                        controller: emailController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: currentUserEmail,
                                          hintStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Avenir',
                                            color: Color(0xFFF5F5F5),
                                            useGoogleFonts: false,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Avenir',
                                          color: Color(0xFFF5F5F5),
                                          useGoogleFonts: false,
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.23),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0x00014BC4),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.vpn_key_outlined,
                                    color: FlutterFlowTheme.primaryColor,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        if (emailController.text.isEmpty) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Email required!',
                                              ),
                                            ),
                                          );
                                          return;
                                        }
                                        await resetPassword(
                                          email: emailController.text,
                                          context: context,
                                        );
                                      },
                                      child: Text(
                                        'Cambiar Contraseña',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Avenir',
                                          color: FlutterFlowTheme.primaryColor,
                                          useGoogleFonts: false,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.03, -0.7),
                          child: Text(
                            FFAppState().userName,
                            style: GoogleFonts.getFont(
                              'Open Sans',
                              color: FlutterFlowTheme.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.01, -0.17),
                          child: Text(
                            FFAppState().userPosition,
                            style: GoogleFonts.getFont(
                              'Open Sans',
                              color: FlutterFlowTheme.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, -0.48),
                          child: Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/perfil.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 1.44),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.4,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFDFDFD),
                                  FlutterFlowTheme.primaryColor
                                ],
                                stops: [0, 0.5],
                                begin: AlignmentDirectional(0, -1),
                                end: AlignmentDirectional(0, 1),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.01, 0.34),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0x00014BC4),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await signOut();
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginWidget(),
                                    ),
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: FlutterFlowTheme.primaryColor,
                                      size: 24,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Text(
                                        'Cerrar sesión',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Avenir',
                                          color: FlutterFlowTheme.primaryColor,
                                          useGoogleFonts: false,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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
        ],
      ),
    );
  }
}
