import 'package:dw10_modular/src/repositories/pessoa/pessoa_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(Modular.args.data ?? ""),
          Text(Modular.args.queryParams
              .toString()), // na web os parametros devem ser enviados por querry ou path
          Text(Modular.args.params.toString()),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              print("---> hashcode da classe repository");
              final pessoa = context.read<PessoaRepository>();
              // ignore: avoid_print
              print(pessoa.hashCode);
            },
            child: const Text("Recuperar Instancia"),
          ),
        ],
      )),
    );
  }
}
