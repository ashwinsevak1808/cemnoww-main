import '/components/product_card_component/product_card_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_list_screen_widget.dart' show ProductListScreenWidget;
import 'package:flutter/material.dart';

class ProductListScreenModel extends FlutterFlowModel<ProductListScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for product_card_component component.
  late ProductCardComponentModel productCardComponentModel1;
  // Model for product_card_component component.
  late ProductCardComponentModel productCardComponentModel2;
  // Model for product_card_component component.
  late ProductCardComponentModel productCardComponentModel3;
  // Model for product_card_component component.
  late ProductCardComponentModel productCardComponentModel4;
  // Model for product_card_component component.
  late ProductCardComponentModel productCardComponentModel5;
  // Model for product_card_component component.
  late ProductCardComponentModel productCardComponentModel6;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    productCardComponentModel1 =
        createModel(context, () => ProductCardComponentModel());
    productCardComponentModel2 =
        createModel(context, () => ProductCardComponentModel());
    productCardComponentModel3 =
        createModel(context, () => ProductCardComponentModel());
    productCardComponentModel4 =
        createModel(context, () => ProductCardComponentModel());
    productCardComponentModel5 =
        createModel(context, () => ProductCardComponentModel());
    productCardComponentModel6 =
        createModel(context, () => ProductCardComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    productCardComponentModel1.dispose();
    productCardComponentModel2.dispose();
    productCardComponentModel3.dispose();
    productCardComponentModel4.dispose();
    productCardComponentModel5.dispose();
    productCardComponentModel6.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
