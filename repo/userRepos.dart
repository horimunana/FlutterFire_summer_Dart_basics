import 'user_model.dart';

abstract class Userrepos {
  Future<UserModel?> findById(String id);
  Future<void> save(UserModel user);
  Future<void> delete(String id);
}
