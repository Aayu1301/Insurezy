import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoadingpageWidget extends StatefulWidget {
  const LoadingpageWidget({Key? key}) : super(key: key);

  @override
  _LoadingpageWidgetState createState() => _LoadingpageWidgetState();
}

class _LoadingpageWidgetState extends State<LoadingpageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  ApiCallResponse? ads;
  ApiCallResponse? results;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 5000));
      if (FFAppState().authToken != null && FFAppState().authToken != '') {
        results = await GetEmpCall.call(
          authToken: FFAppState().authToken,
        );
        if ((results?.succeeded ?? true)) {
          ads = await AdvertisementCall.call();
          setState(() => FFAppState().result = getJsonField(
                (ads?.jsonBody ?? ''),
                r'''$.res''',
              ));
          setState(() => FFAppState().error = '');

          context.goNamed(
            'HomePage',
            queryParams: {
              'emp': serializeParam(
                getJsonField(
                  (results?.jsonBody ?? ''),
                  r'''$.result_1''',
                ),
                ParamType.JSON,
              ),
              'amount': serializeParam(
                getJsonField(
                  (results?.jsonBody ?? ''),
                  r'''$.var_1''',
                ),
                ParamType.int,
              ),
            }.withoutNulls,
          );
        } else {
          context.goNamed('LoginPage');

          setState(() => FFAppState().authToken = '');
        }
      } else {
        context.goNamed('LoginPage');
      }
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBtnText,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
              child: Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_Qh2z0okbVS.json',
                width: 200,
                height: 200,
                fit: BoxFit.contain,
                animate: true,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
              child: Text(
                'Welcome to Insurezy',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.of(context).primaryColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
