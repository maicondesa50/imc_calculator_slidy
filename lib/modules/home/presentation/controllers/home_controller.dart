import 'package:flutter/cupertino.dart';
import 'package:imc_calculator/modules/home/data/models/cadastro_models.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;
CadastroModel cadastroModel = CadastroModel();

abstract class _HomeControllerBase with Store {
  @observable
  double kHeight;
  @observable
  double kWeight;

  @action
  incrementHeight(double height) {
    kHeight = height;
    cadastroModel.height = height;
  }

  @action
  incrementWeight(double weight) {
    kWeight = weight;
    cadastroModel.weight = weight;
  }
}
