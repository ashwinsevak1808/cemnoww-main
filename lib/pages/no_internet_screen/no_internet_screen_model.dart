import '/components/internet_connection_lost/internet_connection_lost_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'no_internet_screen_widget.dart' show NoInternetScreenWidget;
import 'package:flutter/material.dart';

class NoInternetScreenModel extends FlutterFlowModel<NoInternetScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for internet_connection_lost component.
  late InternetConnectionLostModel internetConnectionLostModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    internetConnectionLostModel =
        createModel(context, () => InternetConnectionLostModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    internetConnectionLostModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
