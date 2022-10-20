import 'dart:async';

import 'package:app_suntec/cubits/home_cubit.dart';
import 'package:app_suntec/main.dart';
import 'package:app_suntec/model/model_user.dart';
import 'package:app_suntec/repository/user_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

const _myUser1 =
    ModelUser(id: '111', name: 'Diego', lastName: 'Huaman', age: 28);
const _myUser2 =
    ModelUser(id: '222', name: 'Luis', lastName: 'Paucar', age: 35);

class MockMyUserRepo extends Mock implements MyUserRepository {}

void main() {
  late MockMyUserRepo mockRepo;
  setUp(() async {
    await getIt.reset();
    mockRepo = MockMyUserRepo();
    getIt.registerSingleton<MyUserRepository>(mockRepo);
  });

  blocTest<HomeCubit, HomeState>(
    'Two users will be emitted correctly',
    build: () {
      when(() => mockRepo.getMyUsers()).thenAnswer((_) {
        return Stream.fromIterable([
          [_myUser1, _myUser2]
        ]);
      });
      return HomeCubit();
    },
    act: (cubit) => cubit.init(),
    expect: () => [
      const HomeState(
        isLoading: false,
        myUsers: [_myUser1, _myUser2],
      )
    ],
  );
}
