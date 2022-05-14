import 'package:call_dr/data/doctors_data.dart';
import 'package:call_dr/model/doctor.dart';
import 'package:flutter/material.dart';
import '../widgets/search_widget.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late List<Doctor> doctors;
  String query = '';

  @override
  void initState() {
    super.initState();
    doctors = allDoctors;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          buildSearch(),
          Expanded(
            child: ListView.builder(
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return buildDoctor(doctor);
                }),
          ),
        ],
      ),
    );
  }

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Nombre o Especialidad o Ciudad',
        onChanged: searchDoctor,
      );

  Widget buildDoctor(Doctor doctor) => ListTile(
        leading: Image.asset(
          doctor.image,
          fit: BoxFit.cover,
          width: 50,
        ),
        title: Text(doctor.nombre),
        subtitle: Text(doctor.especialidad),
        trailing: Text(doctor.ciudad),
      );

  void searchDoctor(String query) {
    final doctors = allDoctors.where((doctor) {
      final titleNombre = doctor.nombre.toLowerCase();
      final subtitleEspecialidad = doctor.especialidad.toLowerCase();
      final subtitleCiudad = doctor.ciudad.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleNombre.contains(searchLower) ||
          subtitleEspecialidad.contains(searchLower) ||
          subtitleCiudad.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.doctors = doctors;
    });
  }
}
