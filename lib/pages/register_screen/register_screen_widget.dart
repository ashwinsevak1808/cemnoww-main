import '/backend/api_requests/api_calls.dart';
import '/components/success_failure_component/success_failure_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'register_screen_model.dart';
export 'register_screen_model.dart';

class RegisterScreenWidget extends StatefulWidget {
  const RegisterScreenWidget({super.key});

  @override
  _RegisterScreenWidgetState createState() => _RegisterScreenWidgetState();
}

class _RegisterScreenWidgetState extends State<RegisterScreenWidget> {
  late RegisterScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterScreenModel());

    _model.mobileNumberFeildController ??= TextEditingController();
    _model.mobileNumberFeildFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).warning,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 48.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                width: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Text(
                            'Register to Continue',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Text(
                            'Register to continue to your cemnow account ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: TextFormField(
                                  controller:
                                      _model.mobileNumberFeildController,
                                  focusNode: _model.mobileNumberFeildFocusNode,
                                  textCapitalization: TextCapitalization.none,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Enter Mobile Number',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    alignLabelWithHint: false,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  maxLength: 10,
                                  keyboardType: TextInputType.phone,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).warning,
                                  validator: _model
                                      .mobileNumberFeildControllerValidator
                                      .asValidator(context),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp('[0-9]'))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Builder(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              var shouldSetState = false;
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              _model.registerApiResult =
                                  await CemnowwGroup.registerCall.call();
                              shouldSetState = true;
                              if ((_model.registerApiResult?.succeeded ??
                                  true)) {
                                context.pushNamed(
                                  'otp_verification_screen',
                                  queryParameters: {
                                    'mobileNumber': serializeParam(
                                      int.tryParse(_model
                                          .mobileNumberFeildController.text),
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 300),
                                    ),
                                  },
                                );

                                if (shouldSetState) setState(() {});
                                return;
                              } else {
                                await showAlignedDialog(
                                  barrierColor: const Color(0x4D000000),
                                  barrierDismissible: false,
                                  context: context,
                                  isGlobal: true,
                                  avoidOverflow: false,
                                  targetAnchor: const AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  followerAnchor: const AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  builder: (dialogContext) {
                                    return Material(
                                      color: Colors.transparent,
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: SuccessFailureComponentWidget(
                                          isFailure: false,
                                          subTitle: (_model.registerApiResult
                                                      ?.statusCode ??
                                                  200)
                                              .toString(),
                                          message: 'Registration Failed',
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));

                                if (shouldSetState) setState(() {});
                                return;
                              }

                              if (shouldSetState) setState(() {});
                            },
                            text: 'Register',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 48.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF1D2229),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed(
                                'login_screen',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 300),
                                  ),
                                },
                              );
                            },
                            child: RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Already have an account? ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  const TextSpan(
                                    text: 'Login Here',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 100.0,
                height: 36.0,
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Text(
                    'By continuing, you agree o our Terms of Serivce & Privacy Policy',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFFA0A0A0),
                          fontSize: 11.0,
                        ),
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
