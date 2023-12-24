import '/components/track_order_component/track_order_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'orders_screen_widget.dart' show OrdersScreenWidget;
import 'package:flutter/material.dart';

class OrdersScreenModel extends FlutterFlowModel<OrdersScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for track_order_component component.
  late TrackOrderComponentModel trackOrderComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    trackOrderComponentModel =
        createModel(context, () => TrackOrderComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    trackOrderComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
