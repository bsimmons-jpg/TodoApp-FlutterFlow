import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for signupemail widget.
  FocusNode? signupemailFocusNode;
  TextEditingController? signupemailTextController;
  String? Function(BuildContext, String?)? signupemailTextControllerValidator;
  String? _signupemailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email Address... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for signuppassword widget.
  FocusNode? signuppasswordFocusNode;
  TextEditingController? signuppasswordTextController;
  late bool signuppasswordVisibility;
  String? Function(BuildContext, String?)?
      signuppasswordTextControllerValidator;
  String? _signuppasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for signupconfirm widget.
  FocusNode? signupconfirmFocusNode;
  TextEditingController? signupconfirmTextController;
  late bool signupconfirmVisibility;
  String? Function(BuildContext, String?)? signupconfirmTextControllerValidator;
  String? _signupconfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for loginemail widget.
  FocusNode? loginemailFocusNode;
  TextEditingController? loginemailTextController;
  String? Function(BuildContext, String?)? loginemailTextControllerValidator;
  String? _loginemailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email Address... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for loginpassword widget.
  FocusNode? loginpasswordFocusNode;
  TextEditingController? loginpasswordTextController;
  late bool loginpasswordVisibility;
  String? Function(BuildContext, String?)? loginpasswordTextControllerValidator;
  String? _loginpasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signupemailTextControllerValidator = _signupemailTextControllerValidator;
    signuppasswordVisibility = false;
    signuppasswordTextControllerValidator =
        _signuppasswordTextControllerValidator;
    signupconfirmVisibility = false;
    signupconfirmTextControllerValidator =
        _signupconfirmTextControllerValidator;
    loginemailTextControllerValidator = _loginemailTextControllerValidator;
    loginpasswordVisibility = false;
    loginpasswordTextControllerValidator =
        _loginpasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupemailFocusNode?.dispose();
    signupemailTextController?.dispose();

    signuppasswordFocusNode?.dispose();
    signuppasswordTextController?.dispose();

    signupconfirmFocusNode?.dispose();
    signupconfirmTextController?.dispose();

    loginemailFocusNode?.dispose();
    loginemailTextController?.dispose();

    loginpasswordFocusNode?.dispose();
    loginpasswordTextController?.dispose();
  }
}
