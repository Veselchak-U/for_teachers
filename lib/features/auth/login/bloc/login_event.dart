part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginEventEnter extends LoginEvent {
  const LoginEventEnter(this.credentials);

  final String credentials;

  @override
  List<Object?> get props => [credentials];
}
