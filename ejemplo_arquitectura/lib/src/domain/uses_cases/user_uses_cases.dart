import 'package:ejemplo_arquitectura/src/domain/entities/user.dart';
import 'package:ejemplo_arquitectura/src/domain/repository/repository_uses_cases.dart';

///
class UserUsesCases {
  ///
  UserUsesCases(this._userRepository);

  ///
  final UserRepository _userRepository;

  ///
  Future<User> getUserById(int id) {
    return _userRepository.getUserById(id);
  }
}
