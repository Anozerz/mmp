import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'set_protocol_model.dart';
export 'set_protocol_model.dart';

class SetProtocolWidget extends StatefulWidget {
  const SetProtocolWidget({Key? key}) : super(key: key);

  @override
  _SetProtocolWidgetState createState() => _SetProtocolWidgetState();
}

class _SetProtocolWidgetState extends State<SetProtocolWidget> {
  late SetProtocolModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetProtocolModel());

    _model.textFieldGoal1Controller ??= TextEditingController();
    _model.textFieldGoal2Controller ??= TextEditingController();
    _model.textFieldGoal3Controller ??= TextEditingController();
    _model.textFieldWaiver1Controller ??= TextEditingController();
    _model.textFieldWaiver2Controller ??= TextEditingController();
    _model.textFieldWaiver3Controller ??= TextEditingController();
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
            '📝 Set your Protocol',
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
                      EdgeInsetsDirectional.fromSTEB(32.0, 30.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'DURATION',
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
                        'Set your time period in days.',
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
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: FlutterFlowChoiceChips(
                              options: [
                                ChipData('30'),
                                ChipData('60'),
                                ChipData('90')
                              ],
                              onChanged: (val) => setState(() =>
                                  _model.choiceChipsDurationValue = val?.first),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Colors.white,
                                    ),
                                iconColor: Color(0x00000000),
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    26.0, 5.0, 26.0, 6.0),
                                elevation: 0.0,
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context).title3,
                                iconColor: Color(0x00000000),
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    26.0, 5.0, 26.0, 6.0),
                                elevation: 0.0,
                              ),
                              chipSpacing: 14.0,
                              multiselect: false,
                              alignment: WrapAlignment.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 30.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'FOCUS',
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
                        'Set your goals.',
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 14.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.textFieldGoal1Controller,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Goal #1',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            fontSize: 16.0,
                                          ),
                                      hintText: 'Get my body in shape',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2,
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
                                    style: FlutterFlowTheme.of(context).title3,
                                    maxLines: null,
                                    validator: _model
                                        .textFieldGoal1ControllerValidator
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
                                    controller: _model.textFieldGoal2Controller,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Goal #2',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            fontSize: 16.0,
                                          ),
                                      hintText: 'Build new Salesteam',
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
                                    style: FlutterFlowTheme.of(context).title3,
                                    maxLines: null,
                                    validator: _model
                                        .textFieldGoal2ControllerValidator
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
                                  controller: _model.textFieldGoal3Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Goal #3',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16.0,
                                        ),
                                    hintText: 'Strengthen intuition',
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
                                  style: FlutterFlowTheme.of(context).title3,
                                  maxLines: null,
                                  validator: _model
                                      .textFieldGoal3ControllerValidator
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
                      EdgeInsetsDirectional.fromSTEB(32.0, 30.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'ACTIVITY',
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
                        'Set the number of training days per week.',
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
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 180.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(25.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primaryColor
                                    : Color(0xFFEEEEEE),
                                size: 22.0,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primaryColor
                                    : Color(0xFFEEEEEE),
                                size: 22.0,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              count: _model.countControllerActivityValue ??= 0,
                              updateCount: (count) => setState(() =>
                                  _model.countControllerActivityValue = count),
                              stepSize: 1,
                              minimum: 0,
                              maximum: 7,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 30.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'MINDFULNESS',
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
                          'Set your daily mindful minutes.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
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
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: FlutterFlowChoiceChips(
                              options: [
                                ChipData('0'),
                                ChipData('5'),
                                ChipData('10'),
                                ChipData('20'),
                                ChipData('30'),
                                ChipData('60'),
                                ChipData('90')
                              ],
                              onChanged: (val) => setState(() =>
                                  _model.choiceChipsMindfulValue = val?.first),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Colors.white,
                                    ),
                                iconColor: Color(0x00000000),
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    26.0, 5.0, 26.0, 6.0),
                                elevation: 0.0,
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context).title3,
                                iconColor: Color(0x00000000),
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    26.0, 5.0, 26.0, 6.0),
                                elevation: 0.0,
                              ),
                              chipSpacing: 14.0,
                              rowSpacing: 14.0,
                              multiselect: false,
                              alignment: WrapAlignment.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 30.0, 16.0, 8.0),
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
                      Expanded(
                        child: Text(
                          'Set your strict waivers.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 14.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller:
                                        _model.textFieldWaiver1Controller,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Waiver #1',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            fontSize: 16.0,
                                          ),
                                      hintText: 'Alcohol',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2,
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
                                    style: FlutterFlowTheme.of(context).title3,
                                    maxLines: null,
                                    validator: _model
                                        .textFieldWaiver1ControllerValidator
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
                                    controller:
                                        _model.textFieldWaiver2Controller,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Waiver #2',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            fontSize: 16.0,
                                          ),
                                      hintText: 'Coffein',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2,
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
                                    style: FlutterFlowTheme.of(context).title3,
                                    maxLines: null,
                                    validator: _model
                                        .textFieldWaiver2ControllerValidator
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
                                  controller: _model.textFieldWaiver3Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Waiver #3',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16.0,
                                        ),
                                    hintText: 'Partys',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
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
                                  style: FlutterFlowTheme.of(context).title3,
                                  maxLines: null,
                                  validator: _model
                                      .textFieldWaiver3ControllerValidator
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
                      EdgeInsetsDirectional.fromSTEB(32.0, 30.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'SLEEP',
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
                          'Set your hours of sleep per night.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Nunito',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
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
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 180.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(25.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primaryColor
                                    : Color(0xFFEEEEEE),
                                size: 22.0,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primaryColor
                                    : Color(0xFFEEEEEE),
                                size: 22.0,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              count: _model.countControllerSleepValue ??= 0,
                              updateCount: (count) => setState(() =>
                                  _model.countControllerSleepValue = count),
                              stepSize: 1,
                              minimum: 1,
                              maximum: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 30.0, 16.0, 40.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          final protocolCreateData = {
                            ...createProtocolRecordData(
                              user: currentUserReference,
                              goal1: _model.textFieldGoal1Controller.text,
                              goal2: _model.textFieldGoal2Controller.text,
                              goal3: _model.textFieldGoal3Controller.text,
                              waiver1: _model.textFieldWaiver1Controller.text,
                              waiver2: _model.textFieldWaiver2Controller.text,
                              waiver3: _model.textFieldWaiver3Controller.text,
                              activityDays: _model.countControllerActivityValue,
                              durationDays: _model.choiceChipsDurationValue,
                              mindfulMinutes: _model.choiceChipsMindfulValue,
                              sleepHours: _model.countControllerSleepValue,
                            ),
                            'created_at': FieldValue.serverTimestamp(),
                          };
                          await ProtocolRecord.collection
                              .doc()
                              .set(protocolCreateData);

                          context.pushNamed(
                            'Protocol',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.leftToRight,
                                duration: Duration(milliseconds: 360),
                              ),
                            },
                          );
                        },
                        text: 'Log your protocol',
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 55.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context).subtitle2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
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
