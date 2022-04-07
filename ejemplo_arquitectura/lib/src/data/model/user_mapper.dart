import 'package:ejemplo_arquitectura/src/data/common/base_mapper.dart';
import 'package:ejemplo_arquitectura/src/domain/entities/user.dart';

///
class UserMapper implements BaseMapper<User> {
  @override
  User fromMap(Map<String, dynamic> json) => User(
        id: int.parse(json['id'].toString()),
        name: json['name'].toString(),
        username: json['username'].toString(),
        email: json['email'].toString(),
        phone: json['phone'].toString(),
        website: json['website'].toString(),
      );
}
