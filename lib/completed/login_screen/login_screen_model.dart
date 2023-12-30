import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_screen_widget.dart' show LoginScreenWidget;
import 'package:flutter/material.dart';

class LoginScreenModel extends FlutterFlowModel<LoginScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for mobile_number_feild widget.
  FocusNode? mobileNumberFeildFocusNode;
  TextEditingController? mobileNumberFeildController;
  String? Function(BuildContext, String?)? mobileNumberFeildControllerValidator;
  String? _mobileNumberFeildControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 10) {
      return 'Please enter 10 digit valid number';
    }
    if (!RegExp('^[789]\\d{9}\$').hasMatch(val)) {
      return 'Mobile number should have 9,8,7 at initial';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (Authorization)] action in Button widget.
  ApiCallResponse? loginApiResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileNumberFeildControllerValidator =
        _mobileNumberFeildControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileNumberFeildFocusNode?.dispose();
    mobileNumberFeildController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
