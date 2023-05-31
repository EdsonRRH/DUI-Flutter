import 'package:flutter/material.dart'; //importM para libreria de material
import 'package:pantallas/pages/inicio_page.dart';

//statefulW para crear las clases
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Fondo(),
          Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InicioPage()),
                      );
                    },
                    child: Image.asset(
                      'assets/images/izquierda.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
              const Contenido(),
            ],
          ),
        ],
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Inicia sesión en TGD y da continuar',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Introduce tu correo electrónico y contraseña para continuar en CRG',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              letterSpacing: 0.7,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Datos(),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'ERRH',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Usuario',
                prefixIcon: Icon(
                  Icons.person_4_sharp,
                )),
                style: const TextStyle(color: Color.fromARGB(255, 30, 3, 3), fontSize: 18),
          ),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Contraseña',
                prefixIcon: IconButton(
                  icon: const Icon(
                    Icons.lock,
                  ),
                  onPressed: () {
                    setState(() {
                      obs == true ? obs = false : obs = true;
                    });
                  },
                )),
          ),
          const SizedBox(
            height: 15,
          ),
          const Botones(),
        ],
      ),
    );
  }
}

class Botones extends StatefulWidget {
  const Botones({super.key});

  @override
  State<Botones> createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 16, 161, 142))),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
        ),
        const SizedBox(
          width: double.infinity,
          height: 14,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () {
              // Acción al presionar el botón de Google
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/social.png', // Ruta de la imagen SVG del ícono de Google
                  width: 37, // Tamaño del ícono
                  height: 37,
                ),
                const SizedBox(width: 8), // Espacio entre el ícono y el texto
                const Text(
                  'Regístrate con Google',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
                ),
              ],
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
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 63, 74, 228), Color.fromARGB(255, 5, 6, 72)],
              begin: Alignment.centerRight,
              end: Alignment.bottomLeft)),
    );
  }
}
