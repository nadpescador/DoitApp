part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.successful() = _Succesful;
  const factory LoginState.error() = _Error;
  const factory LoginState.loading() = _Loading;
}
