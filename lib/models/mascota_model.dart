class Mascota {
  late int idMascota;
  late String nombre;
  late String especie;
  late String raza;
  late double precio;
  late int local;
  late List<int> duenos;

  Mascota({
    required this.idMascota,
    required this.nombre,
    required this.especie,
    required this.raza,
    required this.precio,
    required this.local,
    List<int>? duenos,
  }) : duenos = duenos ?? [];

  factory Mascota.fromMap(Map<String, dynamic> data) {
    return Mascota(
      idMascota: data['id_mascota'],
      nombre: data['nombre'],
      especie: data['especie'],
      raza: data['raza'],
      precio: double.parse(data['precio'].toString()),
      local: data['local'],
      duenos: List<int>.from(data['duenos']) ?? [],
    );
  }
}
