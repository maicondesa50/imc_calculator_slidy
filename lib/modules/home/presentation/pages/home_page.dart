import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imc_calculator/modules/home/presentation/widgets/button_widget.dart';
import 'package:imc_calculator/modules/home/presentation/widgets/slider_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weightRating = 160;
  double heightRating = 80;
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculadora de IMC',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 119, 104, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'lib/assets/imc_health.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            SliderWidget(
              type: 'Peso',
              max: 200,
            ),
            SliderWidget(
              type: 'Altura',
              max: 250,
            ),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
