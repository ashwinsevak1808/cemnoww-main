import '/components/repeat_order_component/repeat_order_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dummy_page_widget.dart' show DummyPageWidget;
import 'package:flutter/material.dart';

class DummyPageModel extends FlutterFlowModel<DummyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for repeat_order_component component.
  late RepeatOrderComponentModel repeatOrderComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    repeatOrderComponentModel =
        createModel(context, () => RepeatOrderComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    repeatOrderComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
