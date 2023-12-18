class Dueno {
  late int idDueno;
  late String nombre;
  late String correo;

  Dueno({
    required this.idDueno,
    required this.nombre,
    required this.correo,
  });

  factory Dueno.fromMap(Map<String, dynamic> data) {
    return Dueno(
      idDueno: data['id_dueno'],
      nombre: data['nombre'],
      correo: data['correo'],
    );
  }
}
