part of 'welcome_bloc.dart';

abstract class WelcomeState extends Equatable {
  const WelcomeState();

  @override
  List<Object> get props => [];
}

class WelcomeStateInitial extends WelcomeState {}

class WelcomeStateProgress extends WelcomeState {}

class WelcomeStateGotBackground extends WelcomeState {
  const WelcomeStateGotBackground(this.url);

  final String url;
}

class WelcomeStateGotUser extends WelcomeState {
  const WelcomeStateGotUser(this.userName);

  final String userName;
}

class WelcomeStateError extends WelcomeState {
  const WelcomeStateError(this.error);

  final dynamic error;
}
