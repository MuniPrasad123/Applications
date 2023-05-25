import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonarAcceptPageBakModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for location widget.
  String? locationValue;
  FormFieldController<String>? locationValueController;
  // State field(s) for nextAction widget.
  String? nextActionValue;
  FormFieldController<String>? nextActionValueController;
  // State field(s) for qty widget.
  TextEditingController? qtyController;
  String? Function(BuildContext, String?)? qtyControllerValidator;
  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for distributorName widget.
  TextEditingController? distributorNameController;
  String? Function(BuildContext, String?)? distributorNameControllerValidator;
  // State field(s) for distributorPhone widget.
  TextEditingController? distributorPhoneController;
  String? Function(BuildContext, String?)? distributorPhoneControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameController?.dispose();
    qtyController?.dispose();
    phoneController?.dispose();
    distributorNameController?.dispose();
    distributorPhoneController?.dispose();
  }

  /// Additional helper methods are added here.

}
