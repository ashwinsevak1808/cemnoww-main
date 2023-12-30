import '/backend/api_requests/api_calls.dart';
import '/components/product_card_varient_2/product_card_varient2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_screen_varient2_widget.dart' show HomeScreenVarient2Widget;
import 'package:flutter/material.dart';

class HomeScreenVarient2Model
    extends FlutterFlowModel<HomeScreenVarient2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Products)] action in home_screen_varient_2 widget.
  ApiCallResponse? getProductsData;
  // Stores action output result for [Backend Call - API (Get User Detail)] action in home_screen_varient_2 widget.
  ApiCallResponse? getUserDetails;
  // Models for product_card_varient_2 dynamic component.
  late FlutterFlowDynamicModels<ProductCardVarient2Model>
      productCardVarient2Models;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    productCardVarient2Models =
        FlutterFlowDynamicModels(() => ProductCardVarient2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    productCardVarient2Models.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
