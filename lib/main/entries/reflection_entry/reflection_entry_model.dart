import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReflectionEntryModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldGratitude widget.
  TextEditingController? textFieldGratitudeController1;
  String? Function(BuildContext, String?)?
      textFieldGratitudeController1Validator;
  // State field(s) for TextFieldGratitude widget.
  TextEditingController? textFieldGratitudeController2;
  String? Function(BuildContext, String?)?
      textFieldGratitudeController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldGratitudeController1?.dispose();
    textFieldGratitudeController2?.dispose();
    textController3?.dispose();
  }

  /// Additional helper methods are added here.

}
