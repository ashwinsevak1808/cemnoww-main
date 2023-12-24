import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cart_card_component_model.dart';
export 'cart_card_component_model.dart';

class CartCardComponentWidget extends StatefulWidget {
  const CartCardComponentWidget({super.key});

  @override
  _CartCardComponentWidgetState createState() =>
      _CartCardComponentWidgetState();
}

class _CartCardComponentWidgetState extends State<CartCardComponentWidget> {
  late CartCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartCardComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/cat4.png',
                      ).image,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'White Portland Cement A Grade (25 Kg)',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 1.0,
              thickness: 1.0,
              color: Color(0x2257636C),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Quantity',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 12.0,
                            ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 80.0,
                          height: 28.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minus,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).secondaryText
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 12.0,
                            ),
                            incrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.plus,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).secondaryText
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 12.0,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            count: _model.countControllerValue ??= 1,
                            updateCount: (count) => setState(
                                () => _model.countControllerValue = count),
                            stepSize: 1,
                            minimum: 1,
                            maximum: 49,
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '₹ 1221.00 ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFFC24914),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
