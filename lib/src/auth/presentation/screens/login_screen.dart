import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temp/config/router/app_router.dart';
import 'package:temp/core/helpers/ui_helper.dart';
import 'package:temp/core/services/injection_container.dart';
import 'package:temp/core/widgets/custom/custom_text_field.dart';
import 'package:temp/src/auth/presentation/cubit/auth_cubit.dart';

@RoutePage()
class LoginScreen extends StatefulWidget implements AutoRouteWrapper {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => injector<AuthCubit>(),
        child: this,
      );
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    context.read<AuthCubit>().initLoginControllers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) => current.maybeWhen(
        loginSuccess: (_) => true,
        loginFailure: (_) => true,
        loading: () => true,
        orElse: () => false,
      ),
      listener: (context, state) {
        state.whenOrNull(
          loginSuccess: (user) {
            context.router.maybePop();
            context.router.replace(const SignUpRoute());
          },
          loginFailure: (message) => UiHelper.onFailure(context, message),
          loading: () => UiHelper.onLoading(context),
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Form(
                key: cubit.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      controller: cubit.emailController,
                      hintText: 'Email',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      controller: cubit.passwordController,
                      hintText: 'Password',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (!cubit.formKey.currentState!.validate()) return;
                        cubit.login();
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
