import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopupInsuranceWidget extends StatefulWidget {
  const TopupInsuranceWidget({
    Key? key,
    this.emp,
    this.amount,
    this.plans,
  }) : super(key: key);

  final dynamic emp;
  final int? amount;
  final dynamic plans;

  @override
  _TopupInsuranceWidgetState createState() => _TopupInsuranceWidgetState();
}

class _TopupInsuranceWidgetState extends State<TopupInsuranceWidget> {
  ApiCallResponse? apiResultepr;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).black600,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed(
              'HomePage',
              queryParams: {
                'emp': serializeParam(
                  widget.emp,
                  ParamType.JSON,
                ),
                'amount': serializeParam(
                  widget.amount,
                  ParamType.int,
                ),
              }.withoutNulls,
            );
          },
        ),
        title: Text(
          'Supercharge Insurance',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).black600,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  final topup = getJsonField(
                    widget.plans,
                    r'''$[:]''',
                  ).toList();
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(topup.length, (topupIndex) {
                        final topupItem = topup[topupIndex];
                        return Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 12, 16, 20),
                          child: Container(
                            width: double.infinity,
                            height: 184,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: Image.network(
                                  '',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 16, 16, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              getJsonField(
                                                topupItem,
                                                r'''$.Plan_Name''',
                                              ).toString(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .title1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .black600,
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 330,
                                      height: 80,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                SelectionArea(
                                                    child: Text(
                                                  'Add amount ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12,
                                                      ),
                                                )),
                                                SelectionArea(
                                                    child: Text(
                                                  getJsonField(
                                                    topupItem,
                                                    r'''$.Sum_Insured_Text''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        fontSize: 14,
                                                      ),
                                                )),
                                                SelectionArea(
                                                    child: Text(
                                                  ' to current insured amount',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12,
                                                      ),
                                                )),
                                              ],
                                            ),
                                            if (getJsonField(
                                              topupItem,
                                              r'''$.isspch''',
                                            )
                                                ? true
                                                : false)
                                              SelectionArea(
                                                  child: Text(
                                                'Includes spouse, children',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                            if (getJsonField(
                                              topupItem,
                                              r'''$.isParents''',
                                            )
                                                ? true
                                                : false)
                                              SelectionArea(
                                                  child: Text(
                                                'Includes Parents',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                            if (getJsonField(
                                              topupItem,
                                              r'''$.isparesp''',
                                            )
                                                ? true
                                                : false)
                                              SelectionArea(
                                                  child: Text(
                                                'Includes Parents ,Spouse',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                            if (getJsonField(
                                              topupItem,
                                              r'''$.isspch2''',
                                            )
                                                ? true
                                                : false)
                                              SelectionArea(
                                                  child: Text(
                                                'Includes spouse, children + 2',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                            if (getJsonField(
                                              topupItem,
                                              r'''$.isparspch''',
                                            )
                                                ? true
                                                : false)
                                              SelectionArea(
                                                  child: Text(
                                                'Includes parents,spouse, children',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                            if (getJsonField(
                                              topupItem,
                                              r'''$.isparspch2''',
                                            )
                                                ? true
                                                : false)
                                              SelectionArea(
                                                  child: Text(
                                                'Includes parents,spouse, children + 2',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 4, 16, 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Purchase'),
                                                            content: Text(
                                                                'Are you sure'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        false),
                                                                child: Text(
                                                                    'Cancel'),
                                                              ),
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        true),
                                                                child: Text(
                                                                    'Confirm'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ) ??
                                                      false;
                                              if (confirmDialogResponse) {
                                                apiResultepr =
                                                    await AddtopupCall.call(
                                                  id: getJsonField(
                                                    widget.emp,
                                                    r'''$[:].id''',
                                                  ),
                                                  sid: getJsonField(
                                                    topupItem,
                                                    r'''$.id''',
                                                  ),
                                                );
                                              } else {
                                                context.pushNamed(
                                                  'TopupInsurance',
                                                  queryParams: {
                                                    'emp': serializeParam(
                                                      widget.emp,
                                                      ParamType.JSON,
                                                    ),
                                                    'amount': serializeParam(
                                                      widget.amount,
                                                      ParamType.int,
                                                    ),
                                                    'plans': serializeParam(
                                                      widget.plans,
                                                      ParamType.JSON,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              }

                                              setState(() {});
                                            },
                                            text: 'Buy',
                                            icon: Icon(
                                              Icons.add_rounded,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            options: FFButtonOptions(
                                              width: 120,
                                              height: 40,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              textStyle: GoogleFonts.getFont(
                                                'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                              elevation: 3,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 4),
                                                  child: Text(
                                                    '₹ ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          fontSize: 27,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 4),
                                                  child: Text(
                                                    getJsonField(
                                                      topupItem,
                                                      r'''$.Price''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
