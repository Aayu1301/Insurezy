import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FormS2Widget extends StatefulWidget {
  const FormS2Widget({
    Key? key,
    this.form,
    this.emp,
    this.amount,
  }) : super(key: key);

  final DocumentReference? form;
  final dynamic emp;
  final int? amount;

  @override
  _FormS2WidgetState createState() => _FormS2WidgetState();
}

class _FormS2WidgetState extends State<FormS2Widget> {
  bool isMediaUploading1 = false;
  String uploadedFileUrl1 = '';

  bool isMediaUploading2 = false;
  String uploadedFileUrl2 = '';

  DateTime? datePicked;
  TextEditingController? docNameController;
  TextEditingController? hNameController;
  TextEditingController? reasonController;
  bool isMediaUploading3 = false;
  String uploadedFileUrl3 = '';

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    docNameController = TextEditingController();
    hNameController = TextEditingController();
    reasonController = TextEditingController();
  }

  @override
  void dispose() {
    docNameController?.dispose();
    hNameController?.dispose();
    reasonController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    'Welcome to claim support',
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
            child: SingleChildScrollView(
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
                                  color: FlutterFlowTheme.of(context).black600,
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
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
                                              fontWeight: FontWeight.bold,
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
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
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
                                  percent: 0.5,
                                  width: 350,
                                  lineHeight: 2,
                                  animation: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  backgroundColor: Color(0xFFF1F4F8),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                    child: TextFormField(
                      controller: hNameController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Name of Hospital',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                    child: TextFormField(
                      controller: reasonController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Reason of Hospitalization',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                    child: TextFormField(
                      controller: docNameController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Name of Doctor',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 280,
                              height: 40,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 10, 0),
                                child: Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat('d/M/y', datePicked),
                                    'Patient Date of Admission',
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 20, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await DatePicker.showDatePicker(
                                    context,
                                    showTitleActions: true,
                                    onConfirm: (date) {
                                      setState(() => datePicked = date);
                                    },
                                    currentTime: getCurrentTimestamp,
                                    minTime: DateTime(0, 0, 0),
                                  );
                                },
                                text: '',
                                icon: Icon(
                                  Icons.date_range_outlined,
                                  size: 15,
                                ),
                                options: FFButtonOptions(
                                  width: 50,
                                  height: 30,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .black600,
                                      ),
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                              ),
                              child: Text(
                                'Upload Medical Bills \nsuch as Pharamacy, Opd Bills and other medical related bills',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                              child: Container(
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final selectedFile = await selectFile(
                                        allowedExtensions: ['pdf']);
                                    if (selectedFile != null) {
                                      setState(() => isMediaUploading1 = true);
                                      String? downloadUrl;
                                      try {
                                        downloadUrl = await uploadData(
                                            selectedFile.storagePath,
                                            selectedFile.bytes);
                                      } finally {
                                        isMediaUploading1 = false;
                                      }
                                      if (downloadUrl != null) {
                                        setState(() =>
                                            uploadedFileUrl1 = downloadUrl!);
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }
                                  },
                                  text: 'Upload Bills',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
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
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 190,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                  ),
                                ),
                                child: Text(
                                  'Upoad documents you have received at the time of discharge',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                child: Container(
                                  width: 190,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final selectedFile = await selectFile(
                                          allowedExtensions: ['pdf']);
                                      if (selectedFile != null) {
                                        setState(
                                            () => isMediaUploading2 = true);
                                        String? downloadUrl;
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrl = await uploadData(
                                              selectedFile.storagePath,
                                              selectedFile.bytes);
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading2 = false;
                                        }
                                        if (downloadUrl != null) {
                                          setState(() =>
                                              uploadedFileUrl2 = downloadUrl!);
                                          showUploadMessage(
                                            context,
                                            'Success!',
                                          );
                                        } else {
                                          setState(() {});
                                          showUploadMessage(
                                            context,
                                            'Failed to upload file',
                                          );
                                          return;
                                        }
                                      }
                                    },
                                    text: 'Upload Documents',
                                    options: FFButtonOptions(
                                      width: 190,
                                      height: 40,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                              ),
                              child: Text(
                                'Upload Other douments such as patient past medical history',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final selectedFile = await selectFile(
                                        allowedExtensions: ['pdf']);
                                    if (selectedFile != null) {
                                      setState(() => isMediaUploading3 = true);
                                      String? downloadUrl;
                                      try {
                                        showUploadMessage(
                                          context,
                                          'Uploading file...',
                                          showLoading: true,
                                        );
                                        downloadUrl = await uploadData(
                                            selectedFile.storagePath,
                                            selectedFile.bytes);
                                      } finally {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        isMediaUploading3 = false;
                                      }
                                      if (downloadUrl != null) {
                                        setState(() =>
                                            uploadedFileUrl3 = downloadUrl!);
                                        showUploadMessage(
                                          context,
                                          'Success!',
                                        );
                                      } else {
                                        setState(() {});
                                        showUploadMessage(
                                          context,
                                          'Failed to upload file',
                                        );
                                        return;
                                      }
                                    }
                                  },
                                  text: 'Upload Documents',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 14,
                                          lineHeight: 1,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0, 0.05),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pop();
                              },
                              text: 'Back',
                              options: FFButtonOptions(
                                width: 150,
                                height: 50,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
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
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0, 0.05),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final financeclaimUpdateData =
                                    createFinanceclaimRecordData(
                                  hospitalName: hNameController!.text,
                                  reasonofHospitalization:
                                      reasonController!.text,
                                  doctorName: docNameController!.text,
                                  patientDoa: datePicked,
                                  medicalBills: uploadedFileUrl1,
                                  documents: uploadedFileUrl2,
                                  otherDocuments: uploadedFileUrl3,
                                );
                                await widget.form!
                                    .update(financeclaimUpdateData);

                                context.pushNamed(
                                  'FormS3',
                                  queryParams: {
                                    'details': serializeParam(
                                      widget.form,
                                      ParamType.DocumentReference,
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
                                );
                              },
                              text: 'Next',
                              options: FFButtonOptions(
                                width: 150,
                                height: 50,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
