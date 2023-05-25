import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DistributoreQuoteFormdupModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for location widget.
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // Stores action output result for [Backend Call - API (fetchUserByType)] action in Button widget.
  ApiCallResponse? donarlist;
  // State field(s) for donarname widget.
  TextEditingController? donarnameController;
  String? Function(BuildContext, String?)? donarnameControllerValidator;
  // State field(s) for donarphone widget.
  TextEditingController? donarphoneController;
  String? Function(BuildContext, String?)? donarphoneControllerValidator;
  // State field(s) for donarlocation widget.
  TextEditingController? donarlocationController;
  String? Function(BuildContext, String?)? donarlocationControllerValidator;
  // State field(s) for qty widget.
  TextEditingController? qtyController;
  String? Function(BuildContext, String?)? qtyControllerValidator;
  // Stores action output result for [Backend Call - API (sendMessageToDonar)] action in Button widget.
  ApiCallResponse? apiResultg8q;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameController?.dispose();
    locationController?.dispose();
    phoneController?.dispose();
    donarnameController?.dispose();
    donarphoneController?.dispose();
    donarlocationController?.dispose();
    qtyController?.dispose();
  }

  /// Additional helper methods are added here.

}
