import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

mixin AuthOperations {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  void initLoginControllers() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void disposeLoginControllers() {
    emailController.dispose();
    passwordController.dispose();
  }

  void onLoginFailure(BuildContext context, String message) {
    context.router.maybePop();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }
}
