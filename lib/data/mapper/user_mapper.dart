import 'package:aircode_starter/domain/model/user_model.dart';

import '../../core/mapper.dart';
import '../entity/user_entity.dart';

class UserMapperToEntity implements Mapper<UserModel,UserEntity> {
  @override
  UserEntity call(UserModel user) {
    return UserEntity(
      id: user.id,
      loginDate: user.loginDate,
    );
  }
}

class UserMapperToModel implements Mapper<UserEntity, UserModel> {
  @override
  UserModel call(UserEntity userEntity) {
    return UserModel(
      id: userEntity.id,
      loginDate: userEntity.loginDate,
    );
  }
}