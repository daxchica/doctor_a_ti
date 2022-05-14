import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SizedBox(
        height: 8,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 18.0),
        child: Text(
          'Explora',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
      Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Medicina General',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Medicina de la Mujer',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Medicina del Niño',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 5),
                  onPressed: () {},
                  child: const Text(
                    'Medicina Especializada',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Medicina Alternativa',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Medicina Dental',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Ortodoncia',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Card(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [
                  Text(
                    'Sitio Dedicado a la Salud y atención médica y profesional.',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Nosotros sabemos la difícil decisión del profesional adecuado.',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Aquí encontrarás las opciones de profesionales y los testimonios de personas que han sido tratadas por los distintos profesionales.',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 7),
              scrollDirection: Axis.horizontal,
            ),
            items: [
              // Image.asset(
              //   '/Users/daxchica/studioprojects/call_dr/images/.png',
              //   height: 200,
              // ),
              Image.asset(
                '/Users/daxchica/studioprojects/call_dr/images/clinic_guayaquil.png',
                height: 200,
              ),
              Image.asset(
                '/Users/daxchica/studioprojects/call_dr/images/hosp_alcivar.png',
                height: 200,
              ),
              Image.asset(
                '/Users/daxchica/studioprojects/call_dr/images/omni_hosp.png',
                height: 200,
              ),
            ],
          ),
          Stack(children: [
            Image.asset('images/hospital_guasmo.jpeg'),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Servicios Ciudadanos de Atención Medica',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            )
          ]),
        ],
      ),
    ]);
  }
}
