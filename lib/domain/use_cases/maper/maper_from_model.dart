import 'package:solution_starter/data/model/user.dart';
import 'package:solution_starter/domain/entities/user_entity.dart';
import 'package:solution_starter/domain/use_cases/maper/mapper.dart';

class ToUserEntity implements Mapper<User, UserEntity> {
  @override
  UserEntity call(User user) {
    return UserEntity(
      id: user.id,
      loginDate: user.loginDate,
    );
  }
}