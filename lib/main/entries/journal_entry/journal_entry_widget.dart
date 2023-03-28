import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'journal_entry_model.dart';
export 'journal_entry_model.dart';

class JournalEntryWidget extends StatefulWidget {
  const JournalEntryWidget({
    Key? key,
    this.journalEntry,
  }) : super(key: key);

  final DocumentReference? journalEntry;

  @override
  _JournalEntryWidgetState createState() => _JournalEntryWidgetState();
}

class _JournalEntryWidgetState extends State<JournalEntryWidget> {
  late JournalEntryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JournalEntryModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EntriesRecord>(
      stream: EntriesRecord.getDocument(widget.journalEntry!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 35.0,
              height: 35.0,
              child: SpinKitRing(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 35.0,
              ),
            ),
          );
        }
        final journalEntryEntriesRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                context.safePop();
              },
              child: Icon(
                Icons.keyboard_arrow_left_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 36.0,
              ),
            ),
            title: Text(
              '🌤️ ${dateTimeFormat(
                'MMMEd',
                journalEntryEntriesRecord.createdTime,
                locale: FFLocalizations.of(context).languageCode,
              )}',
              style: FlutterFlowTheme.of(context).title1,
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 30.0, 16.0, 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'MOOD',
                                style: FlutterFlowTheme.of(context)
                                    .title2
                                    .override(
                                      fontFamily: 'Mulish',
                                      letterSpacing: 2.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 18.0, 18.0, 18.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(60.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      26.0, 10.0, 26.0, 10.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.smile,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (journalEntryEntriesRecord.journalGratitude != null &&
                        journalEntryEntriesRecord.journalGratitude != '')
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                32.0, 30.0, 16.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'GRATITUDE',
                                  style: FlutterFlowTheme.of(context)
                                      .title2
                                      .override(
                                        fontFamily: 'Mulish',
                                        letterSpacing: 2.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 18.0, 18.0, 18.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller:
                                        _model.textFieldGratitudeController ??=
                                            TextEditingController(
                                      text: journalEntryEntriesRecord
                                          .journalGratitude,
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFF94C39),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFF94C39),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 22.0, 20.0, 22.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .textFieldGratitudeControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (journalEntryEntriesRecord.journalTask1 != null &&
                        journalEntryEntriesRecord.journalTask1 != '')
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                32.0, 30.0, 16.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'DO\'S',
                                  style: FlutterFlowTheme.of(context)
                                      .title2
                                      .override(
                                        fontFamily: 'Mulish',
                                        letterSpacing: 2.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 18.0, 18.0, 18.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 14.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller:
                                                  _model.textController2 ??=
                                                      TextEditingController(
                                                text: journalEntryEntriesRecord
                                                    .journalTask1,
                                              ),
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Task #1',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          fontSize: 16.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 16.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFF94C39),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFF94C39),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(20.0, 22.0,
                                                            20.0, 22.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                              maxLines: null,
                                              validator: _model
                                                  .textController2Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (journalEntryEntriesRecord
                                                .journalTask2 !=
                                            null &&
                                        journalEntryEntriesRecord
                                                .journalTask2 !=
                                            '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                controller:
                                                    _model.textController3 ??=
                                                        TextEditingController(
                                                  text:
                                                      journalEntryEntriesRecord
                                                          .journalTask2,
                                                ),
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Task #2',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        fontSize: 16.0,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        fontSize: 16.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFF94C39),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFF94C39),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(20.0, 22.0,
                                                              20.0, 22.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                maxLines: null,
                                                validator: _model
                                                    .textController3Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (journalEntryEntriesRecord
                                                .journalTask3 !=
                                            null &&
                                        journalEntryEntriesRecord
                                                .journalTask3 !=
                                            '')
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller:
                                                  _model.textController4 ??=
                                                      TextEditingController(
                                                text: journalEntryEntriesRecord
                                                    .journalTask3,
                                              ),
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Task #3',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          fontSize: 16.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 16.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFF94C39),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFF94C39),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(20.0, 22.0,
                                                            20.0, 22.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                              maxLines: null,
                                              validator: _model
                                                  .textController4Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    if (journalEntryEntriesRecord.journalAvoidance1 != null &&
                        journalEntryEntriesRecord.journalAvoidance1 != '')
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                32.0, 30.0, 16.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'DONT\'S',
                                  style: FlutterFlowTheme.of(context)
                                      .title2
                                      .override(
                                        fontFamily: 'Mulish',
                                        letterSpacing: 2.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 18.0, 18.0, 18.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.textController5 ??=
                                        TextEditingController(
                                      text: journalEntryEntriesRecord
                                          .journalAvoidance1,
                                    ),
                                    readOnly: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle:
                                          FlutterFlowTheme.of(context).title3,
                                      hintStyle:
                                          FlutterFlowTheme.of(context).title3,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFF94C39),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFF94C39),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 22.0, 20.0, 22.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    maxLines: null,
                                    validator: _model.textController5Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (journalEntryEntriesRecord.journalNotes != null &&
                        journalEntryEntriesRecord.journalNotes != '')
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                32.0, 30.0, 16.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'NOTES',
                                  style: FlutterFlowTheme.of(context)
                                      .title2
                                      .override(
                                        fontFamily: 'Mulish',
                                        letterSpacing: 2.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 18.0, 18.0, 18.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.textController6 ??=
                                        TextEditingController(
                                      text: journalEntryEntriesRecord
                                          .journalNotes,
                                    ),
                                    readOnly: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            fontSize: 16.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Mulish',
                                            fontSize: 16.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFF94C39),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFF94C39),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 22.0, 20.0, 22.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    maxLines: null,
                                    validator: _model.textController6Validator
                                        .asValidator(context),
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
        );
      },
    );
  }
}
