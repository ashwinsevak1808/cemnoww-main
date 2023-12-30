import '/backend/api_requests/api_calls.dart';
import '/components/add_product_to_cart/add_product_to_cart_widget.dart';
import '/components/product_card_varient_2/product_card_varient2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_screen_model.dart';
export 'home_screen_model.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  late HomeScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getProductsData = await SpeedcemGroup.getProductsCall.call();
      if ((_model.getProductsData?.succeeded ?? true)) {
        setState(() {
          FFAppState().products = (_model.getProductsData?.jsonBody ?? '');
        });
        _model.getUserDetails = await SpeedcemGroup.getUserDetailCall.call(
          authToken: FFAppState().user.uid,
        );
        if ((_model.getUserDetails?.succeeded ?? true)) {
          setState(() {
            FFAppState().updateUserStruct(
              (e) => e
                ..displayName = SpeedcemGroup.getUserDetailCall
                    .username(
                      (_model.getUserDetails?.jsonBody ?? ''),
                    )
                    .toString()
                ..email = SpeedcemGroup.getUserDetailCall
                    .email(
                      (_model.getUserDetails?.jsonBody ?? ''),
                    )
                    .toString()
                ..address = SpeedcemGroup.getUserDetailCall
                    .address(
                      (_model.getUserDetails?.jsonBody ?? ''),
                    )
                    .toString()
                ..city = SpeedcemGroup.getUserDetailCall
                    .city(
                      (_model.getUserDetails?.jsonBody ?? ''),
                    )
                    .toString()
                ..state = SpeedcemGroup.getUserDetailCall
                    .state(
                      (_model.getUserDetails?.jsonBody ?? ''),
                    )
                    .toString()
                ..zipCode = SpeedcemGroup.getUserDetailCall
                    .zipcode(
                      (_model.getUserDetails?.jsonBody ?? ''),
                    )
                    .toString(),
            );
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Error fetching User data',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).error,
            ),
          );
          return;
        }

        if (FFAppState().user.displayName == '') {
          context.goNamed(
            'update_profile_main',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );

          return;
        } else {
          setState(() {
            FFAppState().show = false;
          });
          return;
        }
      } else {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Error fetching Products data',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
        return;
      }
    });
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFC533),
          automaticallyImplyLeading: false,
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Featured Products',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 6.0, 0.0),
                                child: Text(
                                  'See All',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFC24914),
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_right_sharp,
                                color: Color(0xFFC24914),
                                size: 20.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 16.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final mapProducts = getJsonField(
                                  FFAppState().products,
                                  r'''$''',
                                ).toList().take(5).toList();
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: List.generate(mapProducts.length,
                                        (mapProductsIndex) {
                                      final mapProductsItem =
                                          mapProducts[mapProductsIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 16.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model
                                              .productCardVarient2Models
                                              .getModel(
                                            getJsonField(
                                              mapProductsItem,
                                              r'''$.id''',
                                            ).toString(),
                                            mapProductsIndex,
                                          ),
                                          updateCallback: () => setState(() {}),
                                          child: ProductCardVarient2Widget(
                                            key: Key(
                                              'Key9bd_${getJsonField(
                                                mapProductsItem,
                                                r'''$.id''',
                                              ).toString()}',
                                            ),
                                            image: getJsonField(
                                              mapProductsItem,
                                              r'''$.img''',
                                            ),
                                            productName: getJsonField(
                                              mapProductsItem,
                                              r'''$.name''',
                                            ).toString(),
                                            amount: getJsonField(
                                              mapProductsItem,
                                              r'''$.rate''',
                                            ).toString(),
                                            action: () async {},
                                            onAdd: () async {
                                              var shouldSetState = false;
                                              _model.addToCartApi =
                                                  await SpeedcemGroup
                                                      .addToCartCall
                                                      .call(
                                                skuCode: getJsonField(
                                                  mapProductsItem,
                                                  r'''$.sku''',
                                                ).toString(),
                                                authToken: FFAppState().token,
                                                quentity: '1',
                                              );
                                              shouldSetState = true;
                                              if ((_model.addToCartApi
                                                      ?.succeeded ??
                                                  true)) {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  barrierColor:
                                                      const Color(0x41000000),
                                                  isDismissible: false,
                                                  enableDrag: false,
                                                  useSafeArea: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                        child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const AddProductToCartWidget(),
                                                      ),
                                                    ));
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));

                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Failed',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                    ),
                                                    duration: const Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .error,
                                                  ),
                                                );
                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              }

                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
