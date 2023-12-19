import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FormS3Widget extends StatefulWidget {
  const FormS3Widget({
    Key? key,
    this.details,
    this.emp,
    this.amount,
  }) : super(key: key);

  final DocumentReference? details;
  final dynamic emp;
  final int? amount;

  @override
  _FormS3WidgetState createState() => _FormS3WidgetState();
}

class _FormS3WidgetState extends State<FormS3Widget> {
  ApiCallResponse? result;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FinanceclaimRecord>(
      stream: FinanceclaimRecord.getDocument(widget.details!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final formS3FinanceclaimRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 14),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 13, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 50,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30,
                              ),
                              onPressed: () async {
                                context.pop();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                      child: Text(
                        'Submit Claim',
                        style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 22,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [],
              centerTitle: true,
              toolbarHeight: 80,
              elevation: 0,
            ),
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Color(0xAB005497),
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          13, 0, 0, 0),
                                      child: Text(
                                        '1',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Text(
                                        'Patient \nDetails',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 10,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    100, 0, 0, 0),
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Color(0xAB005497),
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            11, 0, 0, 0),
                                        child: Text(
                                          '2',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 0, 0),
                                        child: Text(
                                          'Treatment\nDetails',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    100, 0, 0, 0),
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Color(0xAB005497),
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            11, 0, 0, 0),
                                        child: Text(
                                          '3',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            13, 0, 0, 0),
                                        child: Text(
                                          'Submit\nDetails',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w800,
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
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                child: Container(
                                  width: 350,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: LinearPercentIndicator(
                                    percent: 1,
                                    width: 350,
                                    lineHeight: 2,
                                    animation: true,
                                    progressColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    backgroundColor: Color(0xFFF1F4F8),
                                    padding: EdgeInsets.zero,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 7),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  'Patient Details',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Name',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    formS3FinanceclaimRecord.patientName,
                                    'NA',
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Aadhar Card No',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    formS3FinanceclaimRecord.patientAadhar
                                        ?.toString(),
                                    'NA',
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  ' Date of birth',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat('d/M/y',
                                        formS3FinanceclaimRecord.patientDob),
                                    'NA',
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
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
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Mobile No.',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    formS3FinanceclaimRecord.patientMobile
                                        ?.toString(),
                                    'NA',
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Relation',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    formS3FinanceclaimRecord.patientState,
                                    'NA',
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Address',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  formS3FinanceclaimRecord.patientAddress!,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 7),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              'Treatment Details',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        decoration: TextDecoration.underline,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Hospital Name',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  formS3FinanceclaimRecord.hospitalName!,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Reason of Hospitalization',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  formS3FinanceclaimRecord
                                      .reasonofHospitalization!,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Doctor Name',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  formS3FinanceclaimRecord.doctorName!,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 140,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Date of Admission',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 13,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat('d/M/y',
                                          formS3FinanceclaimRecord.patientDoa),
                                      'NA',
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Container(
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 16),
                                      child: InkWell(
                                        onTap: () async {
                                          await launchURL(
                                              formS3FinanceclaimRecord
                                                  .medicalBills!);
                                        },
                                        child: Text(
                                          'Uploaded Bills',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF6464E6),
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 16),
                                      child: InkWell(
                                        onTap: () async {
                                          await launchURL(
                                              formS3FinanceclaimRecord
                                                  .documents!);
                                        },
                                        child: Text(
                                          'Uploaded Documents',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF6464E6),
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await launchURL(formS3FinanceclaimRecord
                                            .otherDocuments!);
                                      },
                                      child: Text(
                                        'Uploaded Other Documents',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF6464E6),
                                              decoration:
                                                  TextDecoration.underline,
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
                    Align(
                      alignment: AlignmentDirectional(0, 0.05),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            result = await ClaimCall.call(
                              pName: valueOrDefault<String>(
                                formS3FinanceclaimRecord.patientName,
                                'nA',
                              ),
                              pDob: valueOrDefault<String>(
                                formS3FinanceclaimRecord.patientDob?.toString(),
                                'NA',
                              ),
                              pAadhar: formS3FinanceclaimRecord.patientAadhar,
                              pMob: formS3FinanceclaimRecord.patientMobile,
                              pAdd: formS3FinanceclaimRecord.patientAddress,
                              pGender: formS3FinanceclaimRecord.patientGender,
                              relationship:
                                  formS3FinanceclaimRecord.patientState,
                              pBilllink: formS3FinanceclaimRecord.medicalBills,
                              pDischargeLink:
                                  formS3FinanceclaimRecord.documents,
                              pOtherLink:
                                  formS3FinanceclaimRecord.otherDocuments,
                              pStatus: 'Submitted',
                              userId: getJsonField(
                                widget.emp,
                                r'''$[:].user_id''',
                              ),
                              empId: getJsonField(
                                widget.emp,
                                r'''$[:].id''',
                              ),
                              aamount: 0,
                              claimid: 'C',
                              type: 'Support',
                              hospitalName:
                                  formS3FinanceclaimRecord.hospitalName,
                              reasonofhospitalization: formS3FinanceclaimRecord
                                  .reasonofHospitalization,
                              doa: formS3FinanceclaimRecord.patientDoa
                                  ?.toString(),
                              doctorName: formS3FinanceclaimRecord.doctorName,
                            );
                            if ((result?.succeeded ?? true)) {
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
                            } else {
                              setState(() => FFAppState().error = getJsonField(
                                    (result?.jsonBody ?? ''),
                                    r'''$.message''',
                                  ).toString());

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
                            }

                            await widget.details!.delete();

                            setState(() {});
                          },
                          text: 'Next',
                          options: FFButtonOptions(
                            width: 270,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.05),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pop();
                          },
                          text: 'Back',
                          options: FFButtonOptions(
                            width: 270,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
