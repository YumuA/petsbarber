class Servicio {
  late int idServicio;
  late String nombre;
  late double costo;

  Servicio({
    required this.idServicio,
    required this.nombre,
    required this.costo,
  });

  factory Servicio.fromMap(Map<String, dynamic> data) {
    return Servicio(
      idServicio: data['id_servicio'],
      nombre: data['nombre'],
      costo: double.parse(data['costo'].toString()),
    );
  }
}
