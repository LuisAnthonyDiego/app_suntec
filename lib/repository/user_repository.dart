import 'dart:io';

import 'package:app_suntec/model/model_user.dart';

abstract class MyUserRepository {
  String newId();

  Stream<Iterable<ModelUser>> getMyUsers();

  Future<void> saveMyUser(ModelUser myUser, File? image);

  Future<void> deleteMyUser(ModelUser myUser);
}
