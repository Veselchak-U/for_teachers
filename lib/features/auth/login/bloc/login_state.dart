part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginStateInitial extends LoginState {}

class LoginStateProgress extends LoginState {}

class LoginStateSuccess extends LoginState {}

class LoginStateError extends LoginState {
  const LoginStateError(this.error);

  final dynamic error;
}
