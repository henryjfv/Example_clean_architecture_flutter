/// Esto es una clase que mapea los datos que vienen del api como json a objetos
abstract class BaseMapper<i> {
  /// Este metodo mapea
  dynamic fromMap(Map<String, dynamic> json) {
    return i;
  }
}
