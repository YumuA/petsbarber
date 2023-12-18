import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../config.dart';

class APICliente {
  static var client = http.Client();

static Future<bool> login(String username, String password) async {
  var url = Uri.http(
    Config.apiURL,
    '/api/token/',
  );

  Map<String, String> requestBody = {
    'username': username,
    'password': password,
  };

  var response = await client.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(requestBody),
  );

  if (response.statusCode == 200) {
    var jsonResponse = json.decode(response.body);
    var token = jsonResponse['access'];

    // Almacena el token en un lugar seguro, por ejemplo, utilizando flutter_secure_storage
    // (asegúrate de agregar el paquete a tu archivo pubspec.yaml)
    // Puedes modificar esto según tus necesidades
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('token', token);

    print('Token de acceso: $token');
    
    // Realiza acciones adicionales según tus necesidades
    // ...

    return true;
  } else {
    print('Error en la obtención de token. Código de estado: ${response.statusCode}');
    return false;
  }
}

}
