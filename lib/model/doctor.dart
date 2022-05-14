class Doctor {
  final int id;
  final String nombre;
  final String especialidad;
  final String ciudad;
  final String zona;
  final String pais;
  final String image;

  const Doctor(
      {required this.id,
      required this.nombre,
      required this.especialidad,
      required this.ciudad,
      required this.zona,
      required this.pais,
      required this.image});

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        id: json['id'],
        nombre: json['nombre'],
        especialidad: json['especialidad'],
        ciudad: json['ciudad'],
        zona: json['zona'],
        pais: json['pais'],
        image: json['imagen'],
      );
}
