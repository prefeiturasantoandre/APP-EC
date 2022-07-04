import 'package:flutter/material.dart';

class LoginControllers {
  static late TextEditingController textFieldLoginEmailController;
  static late TextEditingController textFieldLoginSenhaController;
  static late bool textFieldLoginVisibility;

  static final formKey = GlobalKey<FormState>();
  static final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    textFieldLoginEmailController = TextEditingController();
    textFieldLoginSenhaController = TextEditingController();
    const textFieldLoginVisibility = false;
  }
}
