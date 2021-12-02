part of 'welcome_bloc.dart';

abstract class WelcomeEvent extends Equatable {
  const WelcomeEvent();

  @override
  List<Object?> get props => [];
}

class WelcomeEventGetBackground extends WelcomeEvent {}

class WelcomeEventGetUser extends WelcomeEvent {}
