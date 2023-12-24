import '/components/cart_card_component/cart_card_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_screen_widget.dart' show CartScreenWidget;
import 'package:flutter/material.dart';

class CartScreenModel extends FlutterFlowModel<CartScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cart_card_component component.
  late CartCardComponentModel cartCardComponentModel1;
  // Model for cart_card_component component.
  late CartCardComponentModel cartCardComponentModel2;
  // Model for cart_card_component component.
  late CartCardComponentModel cartCardComponentModel3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cartCardComponentModel1 =
        createModel(context, () => CartCardComponentModel());
    cartCardComponentModel2 =
        createModel(context, () => CartCardComponentModel());
    cartCardComponentModel3 =
        createModel(context, () => CartCardComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cartCardComponentModel1.dispose();
    cartCardComponentModel2.dispose();
    cartCardComponentModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
