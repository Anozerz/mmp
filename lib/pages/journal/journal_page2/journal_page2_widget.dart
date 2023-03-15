import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'journal_page2_model.dart';
export 'journal_page2_model.dart';

class JournalPage2Widget extends StatefulWidget {
  const JournalPage2Widget({Key? key}) : super(key: key);

  @override
  _JournalPage2WidgetState createState() => _JournalPage2WidgetState();
}

class _JournalPage2WidgetState extends State<JournalPage2Widget> {
  late JournalPage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JournalPage2Model());

    _model.textFieldGoal1Controller1 ??= TextEditingController();
    _model.textFieldGoal1Controller2 ??= TextEditingController();
    _model.textFieldGoal1Controller3 ??= TextEditingController();
    _model.textFieldGoal1Controller4 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
          child: Text(
            '🌤️ Morning Journal',
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
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(18.0, 10.0, 18.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearPercentIndicator(
                        percent: 1.0,
                        width: MediaQuery.of(context).size.width * 0.1,
                        lineHeight: 4.0,
                        animation: false,
                        progressColor:
                            FlutterFlowTheme.of(context).primaryColor,
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        center: Text(
                          '50%',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Nunito',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                        ),
                        barRadius: Radius.circular(60.0),
                        padding: EdgeInsets.zero,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: LinearPercentIndicator(
                          percent: 1.0,
                          width: MediaQuery.of(context).size.width * 0.1,
                          lineHeight: 4.0,
                          animation: true,
                          progressColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          center: Text(
                            '50%',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Nunito',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                          ),
                          barRadius: Radius.circular(60.0),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      LinearPercentIndicator(
                        percent: 0.0,
                        width: MediaQuery.of(context).size.width * 0.1,
                        lineHeight: 4.0,
                        animation: true,
                        progressColor:
                            FlutterFlowTheme.of(context).primaryColor,
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        center: Text(
                          '50%',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Nunito',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                        ),
                        barRadius: Radius.circular(60.0),
                        padding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 30.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'DO\'S',
                        style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Mulish',
                              letterSpacing: 2.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 16.0, 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'What are your top three tasks for today?',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(18.0, 18.0, 18.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
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
                                  controller: _model.textFieldGoal1Controller1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Task 1',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                    hintText: 'Start my...',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText1,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF94C39),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF94C39),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
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
                                      .textFieldGoal1Controller1Validator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 14.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _model.textFieldGoal1Controller2,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Task 2',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                    hintText: 'Call with...',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText1,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF94C39),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF94C39),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
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
                                      .textFieldGoal1Controller2Validator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.textFieldGoal1Controller3,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Task 3',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                  hintText: 'Finish the...',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFF94C39),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFF94C39),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
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
                                    .textFieldGoal1Controller3Validator
                                    .asValidator(context),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 40.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'DONT\'S',
                        style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Mulish',
                              letterSpacing: 2.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 0.0, 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'One trait or action you should avoid today.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(18.0, 18.0, 18.0, 18.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _model.textFieldGoal1Controller4,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'I do not...',
                            hintStyle: FlutterFlowTheme.of(context).bodyText1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF94C39),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF94C39),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 22.0, 20.0, 22.0),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                          maxLines: null,
                          validator: _model.textFieldGoal1Controller4Validator
                              .asValidator(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(18.0, 30.0, 18.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).customColor1,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'JournalPage1',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 240),
                                ),
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 26.0, 0.0),
                                child: Text(
                                  'Back',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Mulish',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'JournalPage3',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 240),
                                ),
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    26.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'Next',
                                  style: FlutterFlowTheme.of(context).subtitle2,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 24.0,
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
    );
  }
}
