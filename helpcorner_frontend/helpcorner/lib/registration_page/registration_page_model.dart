import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for userType widget.
  String? userTypeValue;
  FormFieldController<String>? userTypeValueController;
  // State field(s) for location widget.
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // Stores action output result for [Backend Call - API (createUser)] action in Button widget.
  ApiCallResponse? apiResultazn;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    locationController?.dispose();
    nameController?.dispose();
    phoneController?.dispose();
  }

  /// Additional helper methods are added here.

}
