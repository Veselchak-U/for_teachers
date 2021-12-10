import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'welcome_event.dart';

part 'welcome_state.dart';

const _mockUrl =
    'https://cdn.pixabay.com/photo/2018/02/13/06/37/png-image-3149954_960_720.png';
const _mockName = 'Валентина';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeStateInitial()) {
    on<WelcomeEventGetBackground>((event, emit) async {
      emit(WelcomeStateProgress());
      try {
        final imageUrl = _mockUrl; //await welcomeRepo.getBackground();
        emit(WelcomeStateGotBackground(imageUrl ?? ''));
        final updateImageUrl = _mockUrl; //await welcomeRepo.updateBackground();
        await Future<void>.delayed(const Duration(seconds: 2));
        // throw 'Something wrong';
        if (updateImageUrl?.isNotEmpty == true) {
          emit(WelcomeStateGotBackground(updateImageUrl));
        }
      } catch (err) {
        emit(WelcomeStateError(err));
      }
    });
    on<WelcomeEventGetUser>((event, emit) async {
      emit(WelcomeStateProgress());
      try {
        await Future<void>.delayed(const Duration(milliseconds: 500));
        // throw 'Something wrong';
        final result = _mockName; // await welcomeRepo.getUser().name;
        if (result?.isNotEmpty == true) {
          emit(WelcomeStateGotUser(result));
        }
      } catch (err) {
        emit(WelcomeStateError(err));
      }
    });
  }
}
