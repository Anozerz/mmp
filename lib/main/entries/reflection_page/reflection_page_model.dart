import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReflectionPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // State field(s) for TextFieldPositivity widget.
  TextEditingController? textFieldPositivityController;
  String? Function(BuildContext, String?)?
      textFieldPositivityControllerValidator;
  // State field(s) for TextFieldAchievment widget.
  TextEditingController? textFieldAchievmentController;
  String? Function(BuildContext, String?)?
      textFieldAchievmentControllerValidator;
  // State field(s) for ActivitySwitch widget.
  bool? activitySwitchValue;
  // State field(s) for ChoiceChipsMindful widget.
  String? choiceChipsMindfulValue;
  FormFieldController<List<String>>? choiceChipsMindfulController;
  // State field(s) for TextFieldNotes widget.
  TextEditingController? textFieldNotesController;
  String? Function(BuildContext, String?)? textFieldNotesControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldPositivityController?.dispose();
    textFieldAchievmentController?.dispose();
    textFieldNotesController?.dispose();
  }

  /// Additional helper methods are added here.

}
