import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:imc_calculator/modules/home/presentation/controllers/home_controller.dart';

class SliderWidget extends StatefulWidget {
  final String type;
  final double max;
  SliderWidget({this.type, this.max});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double rating;
  final controller = HomeController();

  @override
  void initState() {
    controller.kHeight = 0;
    controller.kWeight = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Column(
          children: [
            Text(
              widget.type == 'Peso'
                  ? '${widget.type}(kg): ${controller.kWeight.toStringAsFixed(1)}'
                  : '${widget.type}(cm): ${controller.kHeight.toStringAsFixed(0)}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Slider(
              value: widget.type == 'Peso'
                  ? controller.kWeight
                  : controller.kHeight,
              activeColor: Color.fromRGBO(255, 119, 104, 1),
              inactiveColor: Color.fromRGBO(255, 119, 104, 0.20),
              max: widget.max,
              min: 0,
              onChanged: (newRating) {
                setState(
                  () {
                    widget.type == 'Peso'
                        ? controller.incrementWeight(newRating)
                        : controller.incrementHeight(newRating);
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}
