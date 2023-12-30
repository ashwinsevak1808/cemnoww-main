import '/components/product_card_component/product_card_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'product_list_screen_model.dart';
export 'product_list_screen_model.dart';

class ProductListScreenWidget extends StatefulWidget {
  const ProductListScreenWidget({super.key});

  @override
  _ProductListScreenWidgetState createState() =>
      _ProductListScreenWidgetState();
}

class _ProductListScreenWidgetState extends State<ProductListScreenWidget> {
  late ProductListScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductListScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFC533),
          iconTheme: IconThemeData(color: FlutterFlowTheme.of(context).warning),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 8.0,
                buttonSize: 36.0,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                icon: Icon(
                  Icons.keyboard_backspace_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 18.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Plumbing, heating & ventilation',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 16.0,
                      ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: const Color(0xFFE9E9E9),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Sort by',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12.0,
                                  ),
                            ),
                          ),
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController ??=
                                FormFieldController<String>(
                              _model.dropDownValue ??= 'Popularity',
                            ),
                            options: const [
                              'Popularity',
                              'Price : High to Low',
                              'Price : Low  to High',
                              'Discount',
                              'All Products'
                            ],
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue = val),
                            width: 140.0,
                            height: 30.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.normal,
                                ),
                            icon: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.black,
                              size: 24.0,
                            ),
                            fillColor: Colors.white,
                            elevation: 2.0,
                            borderColor: Colors.white,
                            borderWidth: 2.0,
                            borderRadius: 20.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 2.0, 16.0, 2.0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      childAspectRatio: 0.7,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      wrapWithModel(
                        model: _model.productCardComponentModel1,
                        updateCallback: () => setState(() {}),
                        child: ProductCardComponentWidget(
                          action: () async {},
                          onIncrease: () async {},
                          onDecrease: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.productCardComponentModel2,
                        updateCallback: () => setState(() {}),
                        child: ProductCardComponentWidget(
                          action: () async {},
                          onIncrease: () async {},
                          onDecrease: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.productCardComponentModel3,
                        updateCallback: () => setState(() {}),
                        child: ProductCardComponentWidget(
                          action: () async {},
                          onIncrease: () async {},
                          onDecrease: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.productCardComponentModel4,
                        updateCallback: () => setState(() {}),
                        child: ProductCardComponentWidget(
                          action: () async {},
                          onIncrease: () async {},
                          onDecrease: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.productCardComponentModel5,
                        updateCallback: () => setState(() {}),
                        child: ProductCardComponentWidget(
                          action: () async {},
                          onIncrease: () async {},
                          onDecrease: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.productCardComponentModel6,
                        updateCallback: () => setState(() {}),
                        child: ProductCardComponentWidget(
                          action: () async {},
                          onIncrease: () async {},
                          onDecrease: () async {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
