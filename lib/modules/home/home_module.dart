import 'package:flutter_modular/flutter_modular.dart';
import 'package:imc_calculator/modules/home/presentation/controllers/home_controller.dart';
import 'package:imc_calculator/modules/home/presentation/pages/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => HomePage()),
      ];
  static Inject get to => Inject<HomeModule>.of();
}
