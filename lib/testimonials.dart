import 'package:flutter/material.dart';

class Testimony extends StatefulWidget {
  const Testimony({Key? key}) : super(key: key);

  @override
  State<Testimony> createState() => _TestimonyState();
}

class _TestimonyState extends State<Testimony> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
          child: Text(
            'Testimonios',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Sus comentarios',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Subir Fotos',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
          child: Text(
            'Tus Testimonios',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Card(
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  'images/doctors/dr_peter_jacobson.png',
                  fit: BoxFit.cover,
                  // height: 120,
                  width: 50,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Dr Peter Jacobson - Medico Respiratorio',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Mi experiencia fue totalmente buena con el Doctor. Me atendió inmediatamente y me recetó la medicina menos costosa del mercado',
                        textAlign: TextAlign.justify,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
