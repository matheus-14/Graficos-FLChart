// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRGraficoPizza.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRPainel.dart';
import 'package:flutter/material.dart';

class GraficoPizza extends StatefulWidget {
  final FPaineisRPainel? oPainelPizza;

  const GraficoPizza(this.oPainelPizza, {super.key});
  @override
  State<StatefulWidget> createState() => GraficoPizzaState();
}

class GraficoPizzaState extends State<GraficoPizza> {
  int iTouchedIndex = -1;

  late FPaineisRGraficoPizza oPizza;

  @override
  void initState() {
    super.initState();
    oPizza = widget.oPainelPizza!.oGrafPizza!;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Indicator(
                color: Colors.blue,
                text: 'One',
                isSquare: false,
                size: iTouchedIndex == 0 ? 18 : 16,
                textColor: iTouchedIndex == 0 ? Colors.blue : Colors.grey,
              ),
              Indicator(
                color: Colors.yellow,
                text: 'Two',
                isSquare: false,
                size: iTouchedIndex == 1 ? 18 : 16,
                textColor: iTouchedIndex == 1 ? Colors.yellow : Colors.grey,
              ),
              Indicator(
                color: Colors.red,
                text: 'Three',
                isSquare: false,
                size: iTouchedIndex == 2 ? 18 : 16,
                textColor: iTouchedIndex == 2 ? Colors.red : Colors.grey,
              ),
              Indicator(
                color: Colors.green,
                text: 'Four',
                isSquare: false,
                size: iTouchedIndex == 3 ? 18 : 16,
                textColor: iTouchedIndex == 3 ? Colors.green : Colors.grey,
              ),
            ],
          ),
          const SizedBox(height: 18),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions || pieTouchResponse == null || pieTouchResponse.touchedSection == null) {
                          iTouchedIndex = -1;
                          return;
                        }
                        iTouchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  startDegreeOffset: 0,
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 4,
                  centerSpaceRadius: 0, // widget.bIsDonut ? 50 : 0,
                  centerSpaceColor: Colors.white,
                  sections: desenharSecoes(false), //widget.bIsDonut),
                ),
                swapAnimationDuration: const Duration(milliseconds: 300),
                swapAnimationCurve: Curves.decelerate,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> desenharSecoes(bool isDonut) {
    return List.generate(4, (i) {
      final isTouched = i == iTouchedIndex;
      const double tamanhoFonte = 16;
      double raioSecao = isDonut ? 100 : 150;
      int incrementoAoTocado = 20;
      BorderSide bordaSecao = const BorderSide(
        width: 2,
        color: Colors.black,
      );
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue,
            value: 30,
            title: 'One',
            radius: isTouched ? raioSecao + incrementoAoTocado : raioSecao,
            titlePositionPercentageOffset: 0.6,
            titleStyle: const TextStyle(fontSize: tamanhoFonte, fontWeight: FontWeight.bold, color: Colors.white),
            borderSide: bordaSecao,
          );
        case 1:
          return PieChartSectionData(
            color: Colors.yellow,
            value: 40,
            title: 'Two',
            radius: isTouched ? raioSecao + incrementoAoTocado : raioSecao,
            titlePositionPercentageOffset: 0.6,
            titleStyle: const TextStyle(fontSize: tamanhoFonte, fontWeight: FontWeight.bold, color: Colors.white),
            borderSide: bordaSecao,
          );
        case 2:
          return PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: 'Three',
            radius: isTouched ? raioSecao + incrementoAoTocado : raioSecao,
            titlePositionPercentageOffset: 0.6,
            titleStyle: const TextStyle(fontSize: tamanhoFonte, fontWeight: FontWeight.bold, color: Colors.white),
            borderSide: bordaSecao,
          );
        case 3:
          return PieChartSectionData(
            color: Colors.green,
            value: 20,
            title: 'Four',
            radius: isTouched ? raioSecao + incrementoAoTocado : raioSecao,
            titlePositionPercentageOffset: 0.6,
            titleStyle: const TextStyle(fontSize: tamanhoFonte, fontWeight: FontWeight.bold, color: Colors.white),
            borderSide: bordaSecao,
          );
        default:
          throw Error();
      }
    });
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor,
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )
      ],
    );
  }
}
