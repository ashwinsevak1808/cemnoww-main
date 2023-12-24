import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'otp_verification_screen_widget.dart' show OtpVerificationScreenWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OtpVerificationScreenModel
    extends FlutterFlowModel<OtpVerificationScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  String? _pinCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Feild is required';
    }
    if (val.length < 4) {
      return 'Requires 4 characters.';
    }
    return null;
  }

  // State field(s) for Timer widget.
  int timerMilliseconds = 30000;
  String timerValue = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    pinCodeControllerValidator = _pinCodeControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeController?.dispose();
    timerController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
