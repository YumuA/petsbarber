import 'dart:convert';

List<ClienteModel> clientesFromJson(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed
      .map<ClienteModel>((json) => ClienteModel.fromJson(json))
      .toList();
}

class ClienteModel {
  late int? idDueno;
  late String? nombre;
  late String? apellido;
  late String? email;

  ClienteModel({
    this.idDueno,
    this.nombre,
    this.apellido,
    this.email,
  });

  factory ClienteModel.fromJson(Map<String, dynamic> json) {
    return ClienteModel(
      idDueno: json['id'] as int,
      nombre: json['nombre'],
      apellido: json['apellido'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['idDueno'] = idDueno;
    data['nombre'] = nombre;
    data['apellido'] = apellido;
    data['email'] = email;
    return data;
  }
}