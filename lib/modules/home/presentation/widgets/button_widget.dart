import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imc_calculator/modules/home/data/models/cadastro_models.dart';
import 'package:imc_calculator/modules/home/presentation/controllers/home_controller.dart';

class ButtonWidget extends StatefulWidget {
  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return FlatButton(
          onPressed: () {
            if (cadastroModel.height != 0 && cadastroModel.weight != 0) {
              Modular.navigator.pushNamed('/result');
            } else {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  // retorna um objeto do tipo Dialog
                  return AlertDialog(
                    title: new Text("Faltou inserir alguma informação"),
                    content: new Text(
                        "Para que seja feito o cálculo do IMC insira corretamente seu peso e altura"),
                    actions: <Widget>[
                      // define os botões na base do dialogo
                      new FlatButton(
                        child: new Text("Fechar"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          },
          height: 50,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          color: Colors.red,
          child: Text(
            'Calcular',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        );
      },
    );
  }
}
