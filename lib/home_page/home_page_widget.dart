import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key? key,
    this.emp,
    this.amount,
  }) : super(key: key);

  final dynamic emp;
  final int? amount;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  ApiCallResponse? apiResultv3x;
  FinanceclaimRecord? formc1;
  FinanceclaimRecord? forms1;
  ApiCallResponse? result;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () async {
                    if (FFAppState().authToken != '') {
                      context.goNamed('LoginPage');
                    }
                  },
                  child: RefreshIndicator(
                    onRefresh: () async {
                      result = await GetEmpCall.call(
                        authToken: FFAppState().authToken,
                      );
                      if ((result?.succeeded ?? true)) {
                        context.goNamed(
                          'HomePage',
                          queryParams: {
                            'emp': serializeParam(
                              getJsonField(
                                (result?.jsonBody ?? ''),
                                r'''$.result_1''',
                              ),
                              ParamType.JSON,
                            ),
                            'amount': serializeParam(
                              getJsonField(
                                (result?.jsonBody ?? ''),
                                r'''$.var_1''',
                              ),
                              ParamType.int,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        context.goNamed(
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
                      }
                    },
                    child: SingleChildScrollView(
                      primary: false,
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2, 2, 2, 2),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            getJsonField(
                                                      widget.emp,
                                                      r'''$[:].P_Image''',
                                                    ) !=
                                                    null
                                                ? getJsonField(
                                                    widget.emp,
                                                    r'''$[:].P_Image''',
                                                  )
                                                : 'https://img.icons8.com/officel/30/000000/test-account.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Welcome,',
                                            style: FlutterFlowTheme.of(context)
                                                .title3,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4, 0, 0, 0),
                                            child: Text(
                                              getJsonField(
                                                widget.emp,
                                                r'''$[:].Name''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Text(
                                          'Your active policies are below.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Builder(
                              builder: (context) {
                                final card = getJsonField(
                                  widget.emp,
                                  r'''$[:].Policy_Details''',
                                ).toList();
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                        List.generate(card.length, (cardIndex) {
                                      final cardItem = card[cardIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.92,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 6,
                                                color: Color(0x4B1A1F24),
                                                offset: Offset(0, 2),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: InkWell(
                                            onDoubleTap: () async {
                                              await actions.image(
                                                getJsonField(
                                                  cardItem,
                                                  r'''$.healthcards''',
                                                ),
                                              );
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 24, 20, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        getJsonField(
                                                          cardItem,
                                                          r'''$._plan[:].Plan_Name''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 20, 20, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        getJsonField(
                                                          cardItem,
                                                          r'''$.Policy_id''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 8, 20, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        '₹ ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontSize: 40,
                                                                ),
                                                      ),
                                                      Text(
                                                        widget.amount
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontSize: 32,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(13, 12, 16, 16),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          getJsonField(
                                                            cardItem,
                                                            r'''$._plan[:].Provider''',
                                                          ).toString(),
                                                          'NA',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Mono',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontSize: 13,
                                                                ),
                                                      ),
                                                      Text(
                                                        getJsonField(
                                                          cardItem,
                                                          r'''$.End_Date''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Mono',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 13,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(2, 20, 2, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x39000000),
                                    offset: Offset(0, -1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 16, 20, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Quick Service',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        7, 12, 7, 0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () async {
                                              final financeclaimCreateData =
                                                  createFinanceclaimRecordData();
                                              var financeclaimRecordReference =
                                                  FinanceclaimRecord.collection
                                                      .doc();
                                              await financeclaimRecordReference
                                                  .set(financeclaimCreateData);
                                              formc1 = FinanceclaimRecord
                                                  .getDocumentFromData(
                                                      financeclaimCreateData,
                                                      financeclaimRecordReference);

                                              context.pushNamed(
                                                'FormC1',
                                                queryParams: {
                                                  'formc': serializeParam(
                                                    formc1,
                                                    ParamType.Document,
                                                  ),
                                                  'emp': serializeParam(
                                                    widget.emp,
                                                    ParamType.JSON,
                                                  ),
                                                  'amount': serializeParam(
                                                    widget.amount,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'formc': formc1,
                                                },
                                              );

                                              setState(() {});
                                            },
                                            child: Container(
                                              width: 85,
                                              height: 85,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(4, 4, 4, 4),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.post_add,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 35,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 8, 0, 0),
                                                      child: Text(
                                                        'Instant claim',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    7, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                context.pushNamed(
                                                  'Dependents',
                                                  queryParams: {
                                                    'empdependents':
                                                        serializeParam(
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
                                              child: Container(
                                                width: 89,
                                                height: 85,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(4, 4, 4, 4),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        FFIcons
                                                            .k9820063061636257956,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 33,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 8, 0, 0),
                                                        child: Text(
                                                          'Manage Dependent',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    7, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                apiResultv3x =
                                                    await TopupCall.call(
                                                  newVariable: getJsonField(
                                                    widget.emp,
                                                    r'''$[:].id''',
                                                  ).toString(),
                                                );
                                                if ((apiResultv3x?.succeeded ??
                                                    true)) {
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
                                                        (apiResultv3x
                                                                ?.jsonBody ??
                                                            ''),
                                                        ParamType.JSON,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                }

                                                setState(() {});
                                              },
                                              child: Container(
                                                width: 85,
                                                height: 85,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(4, 4, 4, 4),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        FFIcons
                                                            .k14436290251582985696,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 35,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 8, 0, 0),
                                                        child: Text(
                                                          'Top-up Insurance',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    7, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                final financeclaimCreateData =
                                                    createFinanceclaimRecordData();
                                                var financeclaimRecordReference =
                                                    FinanceclaimRecord
                                                        .collection
                                                        .doc();
                                                await financeclaimRecordReference
                                                    .set(
                                                        financeclaimCreateData);
                                                forms1 = FinanceclaimRecord
                                                    .getDocumentFromData(
                                                        financeclaimCreateData,
                                                        financeclaimRecordReference);

                                                context.pushNamed(
                                                  'FormS1',
                                                  queryParams: {
                                                    'formc': serializeParam(
                                                      forms1,
                                                      ParamType.Document,
                                                    ),
                                                    'emp': serializeParam(
                                                      widget.emp,
                                                      ParamType.JSON,
                                                    ),
                                                    'amount': serializeParam(
                                                      widget.amount,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    'formc': forms1,
                                                  },
                                                );

                                                setState(() {});
                                              },
                                              child: Container(
                                                width: 85,
                                                height: 85,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(4, 4, 4, 4),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .support_agent_sharp,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 35,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 8, 0, 0),
                                                        child: Text(
                                                          'Claim Support',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Builder(
                              builder: (context) {
                                final ads = FFAppState().result.toList();
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                        List.generate(ads.length, (adsIndex) {
                                      final adsItem = ads[adsIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.95,
                                          height: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 6,
                                                color: Color(0x4B1A1F24),
                                                offset: Offset(0, 2),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Expanded(
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: Color(0xFFF5F5F5),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await launchURL(
                                                          getJsonField(
                                                        adsItem,
                                                        r'''$.Ad_link''',
                                                      ).toString());
                                                    },
                                                    child: Image.network(
                                                      getJsonField(
                                                        adsItem,
                                                        r'''$.Ad_banner''',
                                                      ),
                                                      width: double.infinity,
                                                      height: 200,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 85,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).black600,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(1, 0, 1, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.home_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    'Home',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .black600,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'Claimtrack',
                              queryParams: {
                                'emp': serializeParam(
                                  widget.emp,
                                  ParamType.JSON,
                                ),
                                'claim': serializeParam(
                                  widget.amount,
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD2DEF3),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.menu_book_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    'Claims',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'profile',
                              queryParams: {
                                'profile': serializeParam(
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
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC7E7F5),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.person_outline,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 6, 0, 0),
                                    child: Text(
                                      'Profile',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
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
            ],
          ),
        ),
      ),
    );
  }
}
