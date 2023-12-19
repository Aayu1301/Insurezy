import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClaimtrackWidget extends StatefulWidget {
  const ClaimtrackWidget({
    Key? key,
    this.claim,
    this.emp,
  }) : super(key: key);

  final int? claim;
  final dynamic emp;

  @override
  _ClaimtrackWidgetState createState() => _ClaimtrackWidgetState();
}

class _ClaimtrackWidgetState extends State<ClaimtrackWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
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
              }.withoutNulls,
            );
          },
        ),
        title: Text(
          'Track your claims',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      color: Color(0x2E000000),
                      offset: Offset(0, 4),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Rs.',
                            style: FlutterFlowTheme.of(context).title2,
                          ),
                          Text(
                            widget.claim!.toString(),
                            style: FlutterFlowTheme.of(context).title2,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'Total Claim amount',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Recent Transactions',
                    style: FlutterFlowTheme.of(context).bodyText2,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  final emp = getJsonField(
                    widget.emp,
                    r'''$[:]._claim''',
                  ).toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: emp.length,
                    itemBuilder: (context, empIndex) {
                      final empItem = emp[empIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 7,
                                color: Color(0x2E000000),
                                offset: Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 8, 8, 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        getJsonField(
                                          empItem,
                                          r'''$.P_Name''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: Text(
                                          getJsonField(
                                            empItem,
                                            r'''$.ClaimId''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: Text(
                                          getJsonField(
                                            empItem,
                                            r'''$.Relationship''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      getJsonField(
                                        empItem,
                                        r'''$.Status''',
                                      ).toString(),
                                      textAlign: TextAlign.justify,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                          ),
                                    ),
                                    Text(
                                      getJsonField(
                                        empItem,
                                        r'''$.Aamount''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
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
                      InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'HomePage',
                            queryParams: {
                              'emp': serializeParam(
                                widget.emp,
                                ParamType.JSON,
                              ),
                              'amount': serializeParam(
                                widget.claim,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
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
                                    color: Color(0xFFD2DEF3),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.home_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 6, 0, 0),
                                  child: Text(
                                    'Home',
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
                      InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'Claimtrack',
                            queryParams: {
                              'emp': serializeParam(
                                widget.emp,
                                ParamType.JSON,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
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
                                    Icons.menu_book_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 6, 0, 0),
                                  child: Text(
                                    'Claims',
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
                      ),
                      InkWell(
                        onTap: () async {
                          context.goNamed(
                            'profile',
                            queryParams: {
                              'profile': serializeParam(
                                widget.emp,
                                ParamType.JSON,
                              ),
                              'amount': serializeParam(
                                widget.claim,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
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
                                    color: Color(0xFFD2DEF3),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 35,
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
    );
  }
}
