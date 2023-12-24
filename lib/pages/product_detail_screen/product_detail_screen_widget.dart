import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'product_detail_screen_model.dart';
export 'product_detail_screen_model.dart';

class ProductDetailScreenWidget extends StatefulWidget {
  const ProductDetailScreenWidget({super.key});

  @override
  _ProductDetailScreenWidgetState createState() =>
      _ProductDetailScreenWidgetState();
}

class _ProductDetailScreenWidgetState extends State<ProductDetailScreenWidget> {
  late ProductDetailScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailScreenModel());
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
                  'Product Details',
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
          child: SizedBox(
            height: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 100.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 300.0,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 40.0),
                                    child: PageView(
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/380/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/577/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/561/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.00, 1.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 16.0),
                                      child: smooth_page_indicator
                                          .SmoothPageIndicator(
                                        controller:
                                            _model.pageViewController ??=
                                                PageController(initialPage: 0),
                                        count: 3,
                                        axisDirection: Axis.horizontal,
                                        onDotClicked: (i) async {
                                          await _model.pageViewController!
                                              .animateToPage(
                                            i,
                                            duration:
                                                const Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        effect: smooth_page_indicator
                                            .ExpandingDotsEffect(
                                          expansionFactor: 3.0,
                                          spacing: 8.0,
                                          radius: 16.0,
                                          dotWidth: 8.0,
                                          dotHeight: 8.0,
                                          dotColor: FlutterFlowTheme.of(context)
                                              .accent1,
                                          activeDotColor: Colors.black,
                                          paintStyle: PaintingStyle.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1.00, 1.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 20.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 35.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  icon: Icon(
                                    Icons.favorite,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'White Portland Cement A Grade (25 Kg)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF1F1F1F),
                                    fontSize: 18.0,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            '₹ 1221.00 ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DM Sans',
                                  color: const Color(0xFFC24914),
                                  fontSize: 16.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            width: 200.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFECE4),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Icon(
                                    Icons.call_outlined,
                                    color: Color(0xFFC24914),
                                    size: 20.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Get Quotation by call',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFFC24914),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Packaging Size :',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFF1E232C),
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  '25 Kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'DM Sans',
                                        color: const Color(0xFF4C4C4C),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: Color(0xFFD9D9D9),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Packaging Type :',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFF1E232C),
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'PP Sack Bag',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'DM Sans',
                                        color: const Color(0xFF4C4C4C),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: Color(0xFFD9D9D9),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Usage/Application :',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFF1E232C),
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Construction',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'DM Sans',
                                        color: const Color(0xFF4C4C4C),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: Color(0xFFD9D9D9),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Features  :',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFF1E232C),
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Durable And Ideal For All Types Of Construction',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'DM Sans',
                                          color: const Color(0xFF4C4C4C),
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: Color(0xFFD9D9D9),
                        ),
                        Text(
                          'More Specification(s)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Urbanist',
                                    color: const Color(0xFFC24914),
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Description',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF1E232C),
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Cement is mainly used as a binder in concrete, which is a basic material for all types of construction, including housing, roads, schools, hospitals, dams and ports, as well as for decorative applications (for patios, floors, staircases, driveways, pool decks) and items like tables, sculptures or bookcases.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF7D7D7D),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 1.00),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 8.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Container(
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFF1E232C),
                                  width: 1.0,
                                ),
                              ),
                              child: FlutterFlowCountController(
                                decrementIconBuilder: (enabled) => Icon(
                                  Icons.remove_rounded,
                                  color: enabled
                                      ? Colors.black
                                      : FlutterFlowTheme.of(context).alternate,
                                  size: 20.0,
                                ),
                                incrementIconBuilder: (enabled) => FaIcon(
                                  FontAwesomeIcons.plus,
                                  color: enabled
                                      ? Colors.black
                                      : FlutterFlowTheme.of(context).alternate,
                                  size: 16.0,
                                ),
                                countBuilder: (count) => Text(
                                  count.toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 16.0,
                                      ),
                                ),
                                count: _model.countControllerValue ??= 0,
                                updateCount: (count) => setState(
                                    () => _model.countControllerValue = count),
                                stepSize: 1,
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    'orders_screen',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 300),
                                      ),
                                    },
                                  );
                                },
                                text: 'Proceed',
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFFFC533),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
