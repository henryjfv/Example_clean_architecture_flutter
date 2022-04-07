import 'package:ejemplo_arquitectura/src/data/data_source/user_api_data_source.dart';
import 'package:ejemplo_arquitectura/src/domain/uses_cases/user_uses_cases.dart';

///Dependenci injection manual
class Injection {
  ///Manul Dependenci injection
  Injection() {
    _apiDataSource = UserApiDataSource();
    getUserUsesCases = UserUsesCases(_apiDataSource);
  }

  ///get data loan
  late UserUsesCases getUserUsesCases;
  late UserApiDataSource _apiDataSource;
}
