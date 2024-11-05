import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:temp/config/router/app_router.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.replace(const LoginRoute());
          },
          child: const Text('Go to Login'),
        ),
      ),
    );
  }
}
