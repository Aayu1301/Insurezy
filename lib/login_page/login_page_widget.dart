import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  ApiCallResponse? ad;
  ApiCallResponse? authToken;
  ApiCallResponse? employeedetails;
  TextEditingController? emailController;
  TextEditingController? passworController;

  late bool passworVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() => FFAppState().error = '');
    });

    emailController = TextEditingController();
    passworController = TextEditingController();
    passworVisibility = false;
  }

  @override
  void dispose() {
    emailController?.dispose();
    passworController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/logo_m1.png',
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(70, 0, 70, 0),
                      child: Text(
                        'Welcome!',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              fontSize: 40,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                    Text(
                      'Please provide your login details',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: TextFormField(
                        controller: emailController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF0F0F0),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF0F0F0),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).lineColor,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: TextFormField(
                        controller: passworController,
                        autofocus: true,
                        obscureText: !passworVisibility,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).lineColor,
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passworVisibility = !passworVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              passworVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    if (FFAppState().error != null && FFAppState().error != '')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFAppState().error,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(90, 20, 90, 20),
                      child: FFButtonWidget(
                        onPressed: () async {
                          authToken = await XanoLoginCall.call(
                            email: emailController!.text,
                            password: passworController!.text,
                          );
                          if ((authToken?.succeeded ?? true)) {
                            setState(() => FFAppState().authToken =
                                    XanoLoginCall.authorization(
                                  (authToken?.jsonBody ?? ''),
                                ).toString());
                            employeedetails = await GetEmpCall.call(
                              authToken: FFAppState().authToken,
                            );
                            ad = await AdvertisementCall.call();
                            setState(() => FFAppState().result = getJsonField(
                                  (ad?.jsonBody ?? ''),
                                  r'''$.res''',
                                ));

                            context.goNamed(
                              'HomePage',
                              queryParams: {
                                'emp': serializeParam(
                                  getJsonField(
                                    (employeedetails?.jsonBody ?? ''),
                                    r'''$.result_1''',
                                  ),
                                  ParamType.JSON,
                                ),
                                'amount': serializeParam(
                                  getJsonField(
                                    (employeedetails?.jsonBody ?? ''),
                                    r'''$.var_1''',
                                  ),
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.bottomToTop,
                                ),
                              },
                            );

                            setState(() => FFAppState().error = '');
                          } else {
                            setState(() =>
                                FFAppState().error = 'Invalid id or password');
                            setState(() {
                              emailController?.clear();
                              passworController?.clear();
                            });
                          }

                          setState(() {});
                        },
                        text: 'Login',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
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
    );
  }
}
