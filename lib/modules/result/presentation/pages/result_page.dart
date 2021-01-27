import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:imc_calculator/modules/home/presentation/controllers/home_controller.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String _infoText;
  String asset;

  @override
  void initState() {
    _calculate();
    super.initState();
  }

  void _calculate() {
    setState(
      () {
        double weight = cadastroModel.weight;
        double height = cadastroModel.height / 100;
        double imc = weight / (height * height);
        print(imc);
        if (imc < 18.6) {
          _infoText = "Abaixo do Peso (${imc.toStringAsPrecision(2)})";
          asset = 'lib/assets/imc_abaixo.png';
        } else if (imc >= 18.6 && imc < 24.9) {
          _infoText = "Peso ideal (${imc.toStringAsPrecision(2)})";
          asset = 'lib/assets/imc_normal.png';
        } else if (imc >= 24.9 && imc < 29.9) {
          _infoText = "Sobrepeso (${imc.toStringAsPrecision(2)})";
          asset = 'lib/assets/imc_sobrepeso.png';
        } else if (imc >= 29.9 && imc < 34.9) {
          _infoText = "Obesidade grau I (${imc.toStringAsPrecision(2)})";
          asset = 'lib/assets/imc_obesidade1.png';
        } else if (imc >= 34.9 && imc < 39.9) {
          _infoText = "Obesidade grau II (${imc.toStringAsPrecision(2)})";
          asset = 'lib/assets/imc_obesidade2.png';
        } else if (imc >= 40) {
          _infoText = "Obesidade grau III (${imc.toStringAsPrecision(2)})";
          asset = 'lib/assets/imc_obesidade3.png';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resultado do IMC',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 119, 104, 1),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Seu Resultado foi ${_infoText}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            Divider(
              height: 40,
              color: Colors.white,
            ),
            Image.asset(asset),
          ],
        ),
      ),
    );
  }
}
