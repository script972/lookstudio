import 'package:solution_starter/data/model/user.dart';
import 'package:solution_starter/domain/entities/user_entity.dart';
import 'package:solution_starter/domain/use_cases/maper/mapper.dart';

class ToModel implements Mapper<UserEntity, User> {
  @override
  User call(UserEntity userEntity) {
    return User(
      id: userEntity.id,
      loginDate: userEntity.loginDate,
    );
  }
}

