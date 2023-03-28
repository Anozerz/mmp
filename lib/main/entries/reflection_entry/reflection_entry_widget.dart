import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reflection_entry_model.dart';
export 'reflection_entry_model.dart';

class ReflectionEntryWidget extends StatefulWidget {
  const ReflectionEntryWidget({
    Key? key,
    this.reflectionEntry,
  }) : super(key: key);

  final DocumentReference? reflectionEntry;

  @override
  _ReflectionEntryWidgetState createState() => _ReflectionEntryWidgetState();
}

class _ReflectionEntryWidgetState extends State<ReflectionEntryWidget> {
  late ReflectionEntryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReflectionEntryModel());
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
      stream: EntriesRecord.getDocument(widget.reflectionEntry!),
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
        final reflectionEntryEntriesRecord = snapshot.data!;
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
              '🌙 ${dateTimeFormat(
                'MMMEd',
                reflectionEntryEntriesRecord.createdTime,
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
                    if (reflectionEntryEntriesRecord.reflectionPositivity !=
                            null &&
                        reflectionEntryEntriesRecord.reflectionPositivity != '')
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
                                  'POSITIVITY',
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
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model
                                              .textFieldGratitudeController1 ??=
                                          TextEditingController(
                                        text: reflectionEntryEntriesRecord
                                            .reflectionPositivity,
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
                                          .textFieldGratitudeController1Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (reflectionEntryEntriesRecord.reflectionAchievment !=
                            null &&
                        reflectionEntryEntriesRecord.reflectionAchievment != '')
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
                                  'ACHIEVMENT',
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
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model
                                              .textFieldGratitudeController2 ??=
                                          TextEditingController(
                                        text: reflectionEntryEntriesRecord
                                            .reflectionAchievment,
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
                                          .textFieldGratitudeController2Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                                'ACTIVITY',
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (reflectionEntryEntriesRecord
                                            .reflectionActivity ==
                                        true)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            26.0, 10.0, 26.0, 10.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.checkCircle,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    if (reflectionEntryEntriesRecord
                                            .reflectionActivity ==
                                        false)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            26.0, 10.0, 26.0, 10.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.timesCircle,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
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
                    if (reflectionEntryEntriesRecord.reflectionMindfulness !=
                            null &&
                        reflectionEntryEntriesRecord.reflectionMindfulness !=
                            '')
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
                                  'MINDFULNESS',
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
                                    child: Text(
                                      '${reflectionEntryEntriesRecord.reflectionMindfulness} Minutes',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (reflectionEntryEntriesRecord.reflectionNotes != null &&
                        reflectionEntryEntriesRecord.reflectionNotes != '')
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
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController3 ??=
                                          TextEditingController(
                                        text: reflectionEntryEntriesRecord
                                            .reflectionNotes,
                                      ),
                                      readOnly: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Nunito',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                      validator: _model.textController3Validator
                                          .asValidator(context),
                                    ),
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
