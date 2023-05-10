import 'package:dw10_modular/src/modules/core/core_module.dart';
import 'package:dw10_modular/src/modules/home/home_page.dart';
import 'package:dw10_modular/src/modules/pessoa/pessoa_module.dart';
import 'package:dw10_modular/src/repositories/pessoa/pessoa_repository.dart';
import 'package:dw10_modular/src/repositories/pessoa/pessoa_repository_impl.dart';
import 'package:dw10_modular/src/services/buscar_pessoa_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind.lazySingleton<PessoaRepository>((i) => PessoaRepositoryImpl(),
        //     export: true),
        // Bind.lazySingleton<BuscarPessoaService>(
        //     (i) => BuscarPessoaService(pessoaRepository: i()),
        //     export: true),
        // // carrega ao startar o modulo
        // Bind.singleton((i) => PessoaRepositoryImpl()),
        // // cria instancia diretamente
        // Bind.instance<PessoaRepositoryImpl>(PessoaRepositoryImpl()),
        // //sempre uma NOVA  instancia
        // Bind.factory<PessoaRepositoryImpl>((i) => PessoaRepositoryImpl())
      ];

  @override
  // TODO: implement imports
  List<Module> get imports => [
        CoreModule(),
        PessoalModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/:id/batata', child: (context, args) => const HomePage()),
      ];
}
