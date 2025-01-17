part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;

  const factory LoginEvent.attemptedLogin({
    required String username,
    required String password,
  }) = _Attempted;
}
