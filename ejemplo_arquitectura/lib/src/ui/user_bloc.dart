import 'package:rxdart/rxdart.dart';

import '../config/injection.dart';
import '../domain/entities/user.dart';

class UserBloc {
  Injection _injection = Injection();
  final _user = PublishSubject<User>();

  Stream<User> get user => _user.stream;

  getUser() async {
    User userData = await _injection.getUserUsesCases.getUserById(1);
    _user.sink.add(userData);
  }

  dispose() {
    _user.close();
  }
}

final userBloc = UserBloc();
