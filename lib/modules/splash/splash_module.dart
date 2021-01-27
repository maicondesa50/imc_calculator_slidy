import 'package:flutter_modular/flutter_modular.dart';
import 'package:imc_calculator/modules/splash/presentation/controllers/splash_controller.dart';
import 'package:imc_calculator/modules/splash/presentation/pages/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => SplashPage()),
      ];
  static Inject get to => Inject<SplashModule>.of();
}
