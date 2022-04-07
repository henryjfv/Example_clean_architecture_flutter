import 'package:ejemplo_arquitectura/src/data/data_source/user_api_data_source.dart';
import 'package:ejemplo_arquitectura/src/domain/entities/user.dart';

import '../../domain/repository/user_repository.dart';
import '../data_source/user_aws_data_source.dart';

///
class UserRepositoryDataSource implements UserRepository {
  ///
  UserRepositoryDataSource(this._userApiDataSource, this._userAWSDataSource);

  final UserApiDataSource _userApiDataSource;
  final UserAWSDataSource _userAWSDataSource;

  @override
  Future<User> getUserById(int id) async {
    try {
      return await _userApiDataSource.getUserById(1);
    } catch (E) {
      return _userAWSDataSource.getUserById(1);
    }
  }

  @override
  Future<List<User>> getUserList() {
    // TODO: implement getUserList
    throw UnimplementedError();
  }
}
