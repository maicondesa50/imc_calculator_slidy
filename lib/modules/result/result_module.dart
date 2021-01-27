import 'package:flutter_modular/flutter_modular.dart';
import 'package:imc_calculator/modules/result/presentation/controllers/result_controller.dart';
import 'package:imc_calculator/modules/result/presentation/pages/result_page.dart';

class ResultModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => ResultController()),
  ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => ResultPage()),
      ];

  static Inject get to => Inject<ResultModule>.of();
}
