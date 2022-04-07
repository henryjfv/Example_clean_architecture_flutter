import 'dart:convert';

import 'package:ejemplo_arquitectura/src/data/model/user_mapper.dart';
import 'package:ejemplo_arquitectura/src/domain/entities/user.dart';
import 'package:ejemplo_arquitectura/src/domain/repository/user_repository.dart';
import 'package:http/http.dart' as http;

///
class UserAWSDataSource extends UserRepository {
  final UserMapper _userMapper = UserMapper();

  @override
  Future<User> getUserById(int id) async {
    final uri = Uri.parse('https://jsonplaceholder.typicode.com/users/$id');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      return _userMapper
          .fromMap(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Server status error ');
    }
  }

  @override
  Future<List<User>> getUserList() async {
    throw UnimplementedError();
  }
}
