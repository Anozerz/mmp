import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SetProtocolModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChipsDuration widget.
  String? choiceChipsDurationValue;
  FormFieldController<List<String>>? choiceChipsDurationController;
  // State field(s) for TextFieldGoal1 widget.
  TextEditingController? textFieldGoal1Controller;
  String? Function(BuildContext, String?)? textFieldGoal1ControllerValidator;
  // State field(s) for TextFieldGoal2 widget.
  TextEditingController? textFieldGoal2Controller;
  String? Function(BuildContext, String?)? textFieldGoal2ControllerValidator;
  // State field(s) for TextFieldGoal3 widget.
  TextEditingController? textFieldGoal3Controller;
  String? Function(BuildContext, String?)? textFieldGoal3ControllerValidator;
  // State field(s) for CountControllerActivity widget.
  int? countControllerActivityValue;
  // State field(s) for ChoiceChipsMindful widget.
  String? choiceChipsMindfulValue;
  FormFieldController<List<String>>? choiceChipsMindfulController;
  // State field(s) for TextFieldWaiver1 widget.
  TextEditingController? textFieldWaiver1Controller;
  String? Function(BuildContext, String?)? textFieldWaiver1ControllerValidator;
  // State field(s) for TextFieldWaiver2 widget.
  TextEditingController? textFieldWaiver2Controller;
  String? Function(BuildContext, String?)? textFieldWaiver2ControllerValidator;
  // State field(s) for TextFieldWaiver3 widget.
  TextEditingController? textFieldWaiver3Controller;
  String? Function(BuildContext, String?)? textFieldWaiver3ControllerValidator;
  // State field(s) for CountControllerSleep widget.
  int? countControllerSleepValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldGoal1Controller?.dispose();
    textFieldGoal2Controller?.dispose();
    textFieldGoal3Controller?.dispose();
    textFieldWaiver1Controller?.dispose();
    textFieldWaiver2Controller?.dispose();
    textFieldWaiver3Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
