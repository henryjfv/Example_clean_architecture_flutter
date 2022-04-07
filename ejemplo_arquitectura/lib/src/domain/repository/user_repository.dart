//

import 'package:ejemplo_arquitectura/src/domain/entities/user.dart';

///Lista de casos de usos
abstract class UserRepository {
  ///Obtener usuarios
  Future<List<User>> getUserList();

  ///traer usuario por id
  Future<User> getUserById(int id);
}
