import 'package:solution_starter/domain/entities/user.dart';
import 'package:solution_starter/data/model/user_entity.dart';
import 'package:solution_starter/core/mapper.dart';

class ToUserEntity implements Mapper<User, UserEntity> {
  @override
  UserEntity call(User user) {
    return UserEntity(
      id: user.id,
      loginDate: user.loginDate,
    );
  }
}