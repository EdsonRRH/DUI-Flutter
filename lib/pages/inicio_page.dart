import 'package:flutter/material.dart';
import 'package:pantallas/pages/login_page.dart';


class InicioPage extends StatefulWidget {
  const InicioPage({Key? key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Fondo(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/iphone.png',
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                ),
                const SizedBox(height: 20),
                const Contenido(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({Key? key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Bienvenido a TGD!',
          textAlign: TextAlign.end,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Aplicación en Desarrollo',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.25, vertical: 20),
            ),
            child: const Text(
              'Iniciar',
              style: TextStyle(fontSize: 19),
            ),
          ),
        ),
      ],
    );
  }
}



class Fondo extends StatefulWidget {
  const Fondo({super.key});

  @override
  State<Fondo> createState() => _FondoState();
}

class _FondoState extends State<Fondo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade700,
            const Color.fromARGB(255, 4, 27, 61)
          ],
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft
        )
      ),
    );
  }
}