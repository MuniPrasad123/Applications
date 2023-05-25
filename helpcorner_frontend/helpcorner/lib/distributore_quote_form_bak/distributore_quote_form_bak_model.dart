import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DistributoreQuoteFormBakModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for username widget.
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for location widget.
  String? locationValue;
  FormFieldController<String>? locationValueController;
  // State field(s) for qty widget.
  TextEditingController? qtyController;
  String? Function(BuildContext, String?)? qtyControllerValidator;
  // Stores action output result for [Backend Call - API (fetchUserByType)] action in donardetailbutton widget.
  ApiCallResponse? apiResultobv;
  // State field(s) for donorName widget.
  TextEditingController? donorNameController;
  String? Function(BuildContext, String?)? donorNameControllerValidator;
  // State field(s) for donorPhone widget.
  TextEditingController? donorPhoneController;
  String? Function(BuildContext, String?)? donorPhoneControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    usernameController?.dispose();
    phoneController?.dispose();
    qtyController?.dispose();
    donorNameController?.dispose();
    donorPhoneController?.dispose();
  }

  /// Additional helper methods are added here.

}
