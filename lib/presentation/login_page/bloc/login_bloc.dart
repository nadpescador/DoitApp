import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

const _duration1 = Duration(seconds: 1);
const _duration2 = Duration(milliseconds: 400);

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(_Initial()) {
    on<_Attempted>(_onAttempted);
  }

  void _onAttempted(_Attempted event, Emitter<LoginState> emit) async {
    emit(_Loading());

    await Future.delayed(_duration1);
    if (event.password == "123456") {
      emit(_Succesful());
    } else {
      emit(_Error());
    }

    await Future.delayed(_duration2);
    emit(_Initial());
  }
}
