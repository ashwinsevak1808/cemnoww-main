import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_profile_main_widget.dart' show UpdateProfileMainWidget;
import 'package:flutter/material.dart';

class UpdateProfileMainModel extends FlutterFlowModel<UpdateProfileMainWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for user_name_feild widget.
  FocusNode? userNameFeildFocusNode;
  TextEditingController? userNameFeildController;
  String? Function(BuildContext, String?)? userNameFeildControllerValidator;
  // State field(s) for email_id_feild widget.
  FocusNode? emailIdFeildFocusNode;
  TextEditingController? emailIdFeildController;
  String? Function(BuildContext, String?)? emailIdFeildControllerValidator;
  // State field(s) for ful_address_feild widget.
  FocusNode? fulAddressFeildFocusNode;
  TextEditingController? fulAddressFeildController;
  String? Function(BuildContext, String?)? fulAddressFeildControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Update User Details)] action in Button widget.
  ApiCallResponse? updateUserProfile;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    userNameFeildFocusNode?.dispose();
    userNameFeildController?.dispose();

    emailIdFeildFocusNode?.dispose();
    emailIdFeildController?.dispose();

    fulAddressFeildFocusNode?.dispose();
    fulAddressFeildController?.dispose();

    pinCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
