import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JournalPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // State field(s) for SliderMood widget.
  double? sliderMoodValue;
  // State field(s) for TextFieldGratitude widget.
  TextEditingController? textFieldGratitudeController;
  String? Function(BuildContext, String?)?
      textFieldGratitudeControllerValidator;
  // State field(s) for TextFieldTask1 widget.
  TextEditingController? textFieldTask1Controller;
  String? Function(BuildContext, String?)? textFieldTask1ControllerValidator;
  // State field(s) for TextFieldTask2 widget.
  TextEditingController? textFieldTask2Controller;
  String? Function(BuildContext, String?)? textFieldTask2ControllerValidator;
  // State field(s) for TextFieldTask3 widget.
  TextEditingController? textFieldTask3Controller;
  String? Function(BuildContext, String?)? textFieldTask3ControllerValidator;
  // State field(s) for TextFieldAvoidance1 widget.
  TextEditingController? textFieldAvoidance1Controller;
  String? Function(BuildContext, String?)?
      textFieldAvoidance1ControllerValidator;
  // State field(s) for TextFieldNotes widget.
  TextEditingController? textFieldNotesController;
  String? Function(BuildContext, String?)? textFieldNotesControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldGratitudeController?.dispose();
    textFieldTask1Controller?.dispose();
    textFieldTask2Controller?.dispose();
    textFieldTask3Controller?.dispose();
    textFieldAvoidance1Controller?.dispose();
    textFieldNotesController?.dispose();
  }

  /// Additional helper methods are added here.

}
