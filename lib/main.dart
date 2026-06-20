import 'package:flutter/material.dart';

void main() {
  runApp(const MiAppPrueba());
}

class MiAppPrueba extends StatelessWidget {
  const MiAppPrueba({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba Codemagic',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  String mensaje = "¡Hola! Esta es mi primera app compilada en la nube.";

  void cambiarMensaje() {
    setState(() {
      mensaje = "¡El botón funciona y el APK está listo!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prueba de Compilación')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mensaje, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: cambiarMensaje,
              child: const Text('Presióname'),
            ),
          ],
        ),
      ),
    );
  }
}
