part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.loginSuccess(UserModel user) = LoginSuccess;
  const factory AuthState.loginFailure(String message) = LoginFailed;
}
