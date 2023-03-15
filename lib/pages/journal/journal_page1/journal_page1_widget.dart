import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'journal_page1_model.dart';
export 'journal_page1_model.dart';

class JournalPage1Widget extends StatefulWidget {
  const JournalPage1Widget({Key? key}) : super(key: key);

  @override
  _JournalPage1WidgetState createState() => _JournalPage1WidgetState();
}

class _JournalPage1WidgetState extends State<JournalPage1Widget> {
  late JournalPage1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JournalPage1Model());

    _model.textFieldGratitudeController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: LinearPercentIndicator(
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
                      EdgeInsetsDirectional.fromSTEB(32.0, 40.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'MOOD',
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
                      Expanded(
                        child: Text(
                          'How do you feel today?',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(18.0, 16.0, 18.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.tired,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                          FaIcon(
                            FontAwesomeIcons.frown,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                          FaIcon(
                            FontAwesomeIcons.meh,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                          FaIcon(
                            FontAwesomeIcons.smile,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                          FaIcon(
                            FontAwesomeIcons.grinBeam,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Slider(
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              inactiveColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              min: 1.0,
                              max: 5.0,
                              value: _model.sliderValue ??= 3.0,
                              divisions: 4,
                              onChanged: (newValue) {
                                setState(() => _model.sliderValue = newValue);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 30.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'GRATITUDE',
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
                      Text(
                        'What are you grateful for?',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(18.0, 18.0, 18.0, 18.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller:
                                      _model.textFieldGratitudeController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'I\'m grateful for...',
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
                                  minLines: 4,
                                  validator: _model
                                      .textFieldGratitudeControllerValidator
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
                              'HomePage',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.topToBottom,
                                  duration: Duration(milliseconds: 200),
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
                              'JournalPage2',
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
