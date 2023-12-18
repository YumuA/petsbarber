import 'package:flutter/material.dart';

class Cita {
  late int idCita;
  late String nombreCliente;
  late String nombreMascota;
  late String especieMascota;
  late DateTime fecha;
  late TimeOfDay hora;
  late double costo;

  Cita({
    required this.idCita,
    required this.nombreCliente,
    required this.nombreMascota,
    required this.especieMascota,
    required this.fecha,
    required this.hora,
    required this.costo,
  });

  factory Cita.fromMap(Map<String, dynamic> data) {
    return Cita(
      idCita: data['id_cita'],
      nombreCliente: data['nombre_cliente'],
      nombreMascota: data['nombre_mascota'],
      especieMascota: data['especie_mascota'],
      fecha: DateTime.parse(data['fecha']),
      hora: TimeOfDay.fromDateTime(DateTime.parse(data['hora'])),
      costo: double.parse(data['costo'].toString()),
    );
  }
}
