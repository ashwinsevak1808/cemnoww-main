import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'success_failure_component_model.dart';
export 'success_failure_component_model.dart';

class SuccessFailureComponentWidget extends StatefulWidget {
  const SuccessFailureComponentWidget({
    super.key,
    this.isFailure,
    this.message,
    required this.subTitle,
  });

  final bool? isFailure;
  final String? message;
  final String? subTitle;

  @override
  _SuccessFailureComponentWidgetState createState() =>
      _SuccessFailureComponentWidgetState();
}

class _SuccessFailureComponentWidgetState
    extends State<SuccessFailureComponentWidget> {
  late SuccessFailureComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessFailureComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.00, 0.00),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          constraints: const BoxConstraints(
            minWidth: 300.0,
            maxWidth: 390.0,
            maxHeight: 280.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(1.00, -1.00),
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      buttonSize: 36.0,
                      fillColor: const Color(0x112B2B2B),
                      icon: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      if (widget.isFailure ?? false) {
                        return Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Lottie.asset(
                                'assets/lottie_animations/Animation_-_1700922991558.json',
                                width: 150.0,
                                height: 150.0,
                                fit: BoxFit.contain,
                                repeat: false,
                                animate: true,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.message,
                                    'Success',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  widget.subTitle,
                                  'The action is successfully completed',
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Lottie.asset(
                                'assets/lottie_animations/failure-lottie.json',
                                width: 150.0,
                                height: 150.0,
                                fit: BoxFit.contain,
                                repeat: false,
                                animate: true,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.message,
                                    'Failed',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  widget.subTitle,
                                  'The action has been failed',
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
