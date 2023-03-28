import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'journey_model.dart';
export 'journey_model.dart';

class JourneyWidget extends StatefulWidget {
  const JourneyWidget({Key? key}) : super(key: key);

  @override
  _JourneyWidgetState createState() => _JourneyWidgetState();
}

class _JourneyWidgetState extends State<JourneyWidget> {
  late JourneyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JourneyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<EntriesRecord>>(
      stream: queryEntriesRecord(
        queryBuilder: (entriesRecord) => entriesRecord
            .where('user', isEqualTo: currentUserReference)
            .orderBy('createdTime', descending: true),
      ),
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
        List<EntriesRecord> journeyEntriesRecordList = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
              child: Text(
                '✨ Your Journey',
                style: FlutterFlowTheme.of(context).title1,
              ),
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
                    Builder(
                      builder: (context) {
                        final days = functions
                            .getFormattedDaysList(journeyEntriesRecordList
                                .map((e) => e.createdTime)
                                .withoutNulls
                                .toList())
                            .toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: days.length,
                          itemBuilder: (context, daysIndex) {
                            final daysItem = days[daysIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      18.0, 30.0, 18.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        dateTimeFormat(
                                          'MMMEd',
                                          daysItem,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ],
                                  ),
                                ),
                                StreamBuilder<List<EntriesRecord>>(
                                  stream: queryEntriesRecord(
                                    queryBuilder: (entriesRecord) =>
                                        entriesRecord
                                            .where('user',
                                                isEqualTo: currentUserReference)
                                            .where('createdTime',
                                                isGreaterThanOrEqualTo:
                                                    functions
                                                        .getDayStart(daysItem))
                                            .where('createdTime',
                                                isLessThanOrEqualTo: functions
                                                    .getDayEnd(daysItem)),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 35.0,
                                          height: 35.0,
                                          child: SpinKitRing(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 35.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<EntriesRecord>
                                        listViewEntriesRecordList =
                                        snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewEntriesRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewEntriesRecord =
                                            listViewEntriesRecordList[
                                                listViewIndex];
                                        return Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (valueOrDefault<bool>(
                                                listViewEntriesRecord
                                                        .journalCheck ==
                                                    true,
                                                false,
                                              ))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(18.0, 18.0,
                                                          18.0, 0.0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        'JournalEntry',
                                                        queryParams: {
                                                          'journalEntry':
                                                              serializeParam(
                                                            listViewEntriesRecord
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    240),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    20.0,
                                                                    20.0,
                                                                    20.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          14.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    '🌤️JOURNAL',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Mulish',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          letterSpacing:
                                                                              2.0,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    dateTimeFormat(
                                                                      'jm',
                                                                      listViewEntriesRecord
                                                                          .createdTime!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      'What are you grateful for?',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          24.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      listViewEntriesRecord
                                                                          .journalGratitude!,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Nunito',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Wrap(
                                                                spacing: 10.0,
                                                                runSpacing:
                                                                    10.0,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                                direction: Axis
                                                                    .horizontal,
                                                                runAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalDirection:
                                                                    VerticalDirection
                                                                        .down,
                                                                clipBehavior:
                                                                    Clip.none,
                                                                children: [
                                                                  Visibility(
                                                                    visible: listViewEntriesRecord.journalGratitude !=
                                                                            null &&
                                                                        listViewEntriesRecord.journalGratitude !=
                                                                            '',
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.heart,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                6.0,
                                                                                16.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              'Gratitude',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Visibility(
                                                                    visible:
                                                                        listViewEntriesRecord.journalMood !=
                                                                            null,
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.smile,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                6.0,
                                                                                16.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              'Mood',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Visibility(
                                                                    visible: listViewEntriesRecord.journalTask1 !=
                                                                            null &&
                                                                        listViewEntriesRecord.journalTask1 !=
                                                                            '',
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.checkCircle,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                6.0,
                                                                                16.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              'Do\'s',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Visibility(
                                                                    visible: listViewEntriesRecord.journalAvoidance1 !=
                                                                            null &&
                                                                        listViewEntriesRecord.journalAvoidance1 !=
                                                                            '',
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.timesCircle,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                6.0,
                                                                                16.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              'Dont\'s',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Visibility(
                                                                    visible: listViewEntriesRecord.journalNotes !=
                                                                            null &&
                                                                        listViewEntriesRecord.journalNotes !=
                                                                            '',
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.stickyNote,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                6.0,
                                                                                16.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              'Notes',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
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
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (valueOrDefault<bool>(
                                                listViewEntriesRecord
                                                        .reflectionCheck ==
                                                    true,
                                                false,
                                              ))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(18.0, 18.0,
                                                          18.0, 0.0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        'ReflectionEntry',
                                                        queryParams: {
                                                          'reflectionEntry':
                                                              serializeParam(
                                                            listViewEntriesRecord
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    240),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    20.0,
                                                                    20.0,
                                                                    20.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          14.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    '🌙REFLECTION',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Mulish',
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              2.0,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    dateTimeFormat(
                                                                      'jm',
                                                                      listViewEntriesRecord
                                                                          .createdTime!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      'A wonderful thing that happened today.',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          24.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      listViewEntriesRecord
                                                                          .reflectionPositivity!,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Nunito',
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Wrap(
                                                                spacing: 10.0,
                                                                runSpacing:
                                                                    10.0,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                                direction: Axis
                                                                    .horizontal,
                                                                runAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalDirection:
                                                                    VerticalDirection
                                                                        .down,
                                                                clipBehavior:
                                                                    Clip.none,
                                                                children: [
                                                                  Visibility(
                                                                    visible: listViewEntriesRecord.reflectionPositivity !=
                                                                            null &&
                                                                        listViewEntriesRecord.reflectionPositivity !=
                                                                            '',
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.gem,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                6.0,
                                                                                16.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              'Positivity',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Visibility(
                                                                    visible: listViewEntriesRecord.reflectionAchievment !=
                                                                            null &&
                                                                        listViewEntriesRecord.reflectionAchievment !=
                                                                            '',
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.star,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                6.0,
                                                                                16.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              'Achievment',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Visibility(
                                                                    visible:
                                                                        listViewEntriesRecord.reflectionActivity ==
                                                                            true,
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.lemon,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                6.0,
                                                                                16.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              'Activity',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Visibility(
                                                                    visible: (listViewEntriesRecord.reflectionMindfulness !=
                                                                                null &&
                                                                            listViewEntriesRecord.reflectionMindfulness !=
                                                                                '') &&
                                                                        (listViewEntriesRecord.reflectionMindfulness !=
                                                                            '0'),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.dotCircle,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                6.0,
                                                                                16.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              'Mindfulness',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Visibility(
                                                                    visible: listViewEntriesRecord.reflectionNotes !=
                                                                            null &&
                                                                        listViewEntriesRecord.reflectionNotes !=
                                                                            '',
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.stickyNote,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                6.0,
                                                                                16.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              'Notes',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
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
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
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
