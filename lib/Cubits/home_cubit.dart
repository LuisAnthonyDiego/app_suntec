import 'dart:async';

import 'package:app_suntec/model/model_user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../main.dart';
import '../repository/user_repository.dart';

// Extends Cubit and will emit states of the type HomeState
class HomeCubit extends Cubit<HomeState> {
  // Get the injected MyUserRepository
  final MyUserRepository _userRepository = getIt();
  StreamSubscription? _myUsersSubscription;

  HomeCubit() : super(const HomeState());

  Future<void> init() async {
    // Subscribe to listen for changes in the myUser list
    _myUsersSubscription = _userRepository.getMyUsers().listen(myUserListen);
  }

  // Every time the myUser list is updated, this function will be called
  // with the latest data
  void myUserListen(Iterable<ModelUser> myUsers) async {
    emit(HomeState(
      isLoading: false,
      myUsers: myUsers,
    ));
  }

  @override
  Future<void> close() {
    _myUsersSubscription?.cancel();
    return super.close();
  }
}

// Class that will hold the state of this Cubit
// Extending Equatable will help us to compare if two instances
// are the same without override == and hashCode
class HomeState extends Equatable {
  final bool isLoading;
  final Iterable<ModelUser> myUsers;

  const HomeState({
    this.isLoading = true,
    this.myUsers = const [],
  });

  @override
  List<Object?> get props => [isLoading, myUsers];
}
