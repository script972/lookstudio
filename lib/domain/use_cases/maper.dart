// TODO(George): make to static class with methods


import 'package:solution_starter/data/model/user.dart';
import 'package:solution_starter/domain/entities/user_entity.dart';

abstract class Mapper<FROM, TO> {
  TO call(FROM object);
}

class ToModel implements Mapper<UserEntity, User> {
  @override
  User call(UserEntity userEntity) {
    return User(
      id: userEntity.id,
      loginDate: userEntity.loginDate,
    );
  }
}

class ToUserEntity implements Mapper<User, UserEntity> {
  @override
  UserEntity call(User user) {
    return UserEntity(
      id: user.id,
      loginDate: user.loginDate,
    );
  }
}