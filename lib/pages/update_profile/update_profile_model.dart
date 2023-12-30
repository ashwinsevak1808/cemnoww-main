import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_profile_widget.dart' show UpdateProfileWidget;
import 'package:flutter/material.dart';

class UpdateProfileModel extends FlutterFlowModel<UpdateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

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
  // Stores action output result for [Backend Call - API (Update User Details)] action in Button widget.
  ApiCallResponse? updateUserProfile;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userNameFeildFocusNode?.dispose();
    userNameFeildController?.dispose();

    emailIdFeildFocusNode?.dispose();
    emailIdFeildController?.dispose();

    fulAddressFeildFocusNode?.dispose();
    fulAddressFeildController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
