import '/flutter_flow/flutter_flow_util.dart';
import 'add_address_widget.dart' show AddAddressWidget;
import 'package:flutter/material.dart';

class AddAddressModel extends FlutterFlowModel<AddAddressWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
