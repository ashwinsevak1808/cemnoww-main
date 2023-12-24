import '/components/product_card_component/product_card_component_widget.dart';
import '/components/repeat_order_component/repeat_order_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for product_card_component component.
  late ProductCardComponentModel productCardComponentModel1;
  // Model for product_card_component component.
  late ProductCardComponentModel productCardComponentModel2;
  // Model for product_card_component component.
  late ProductCardComponentModel productCardComponentModel3;
  // Model for repeat_order_component component.
  late RepeatOrderComponentModel repeatOrderComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    productCardComponentModel1 =
        createModel(context, () => ProductCardComponentModel());
    productCardComponentModel2 =
        createModel(context, () => ProductCardComponentModel());
    productCardComponentModel3 =
        createModel(context, () => ProductCardComponentModel());
    repeatOrderComponentModel =
        createModel(context, () => RepeatOrderComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    productCardComponentModel1.dispose();
    productCardComponentModel2.dispose();
    productCardComponentModel3.dispose();
    repeatOrderComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
