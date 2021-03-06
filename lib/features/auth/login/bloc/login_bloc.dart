import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginStateInitial()) {

    on<LoginEventEnter>((event, emit) async {
      emit(LoginStateProgress());
      try {
        await Future<void>.delayed(const Duration(seconds: 1));
        // throw 'Something wrong';
        emit(LoginStateSuccess());
      } catch (err) {
        emit(LoginStateError(err));
      }
    });
  }
}
