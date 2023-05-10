import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Modular.to
                    .pushNamed("/home", arguments: "Pessoa enviado pelo DATA");
              },
              child: const Text("Enviado pelo DATA"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed("/home/?query=Pessoa&order=id");
              },
              child: const Text("Query String"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed("/home/123/batata?query=Dario");
              },
              child: const Text("Parametro como Path"),
            ),
          ],
        ),
      ),
    );
  }
}
