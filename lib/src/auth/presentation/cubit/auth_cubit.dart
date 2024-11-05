import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:temp/src/auth/data/model/user_model.dart';
import 'package:temp/src/auth/data/model/user_params.dart';
import 'package:temp/src/auth/data/repository/user_repository.dart';
import 'package:temp/src/auth/presentation/cubit/auth_operations.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> with AuthOperations {
  final AuthRepository _authRepository;
  AuthCubit(this._authRepository) : super(const AuthState.initial());

  Future<void> login() async {
    emit(const AuthState.loading());
    final response = await _authRepository.login(
      LoginParams(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (result) => emit(
        AuthState.loginSuccess(result.data ?? const UserModel()),
      ),
      failure: (message) => emit(
        AuthState.loginFailure(message),
      ),
    );
  }

  @override
  Future<void> close() {
    disposeLoginControllers();
    return super.close();
  }
}
