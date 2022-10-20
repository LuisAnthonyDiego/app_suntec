import 'dart:io';

import 'package:app_suntec/model/model_user.dart';

import '../../data_source/firebase_datasource.dart';
import '../../main.dart';
import '../user_repository.dart';

class MyUserRepositoryImp extends MyUserRepository {
  final FirebaseDataSource _fDataSource = getIt();

  @override
  String newId() {
    return _fDataSource.newId();
  }

  @override
  Stream<Iterable<ModelUser>> getMyUsers() {
    return _fDataSource.getMyUsers();
  }

  @override
  Future<void> saveMyUser(ModelUser myUser, File? image) {
    return _fDataSource.saveMyUser(myUser, image);
  }

  @override
  Future<void> deleteMyUser(ModelUser myUser) {
    return _fDataSource.deleteMyUser(myUser);
  }
}
