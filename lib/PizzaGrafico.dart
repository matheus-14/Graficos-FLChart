// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'CoresAuxiliaresGraficos.dart';

class PizzaGrafico extends StatefulWidget {
  final bool bIsDonut;

  // List<String> lIndicadoresTexto;
  // List<Color> lIndicadoresCor;
  // iTamanhoIndicadorNormal;
  // iTamanhoIndicadorExpandido;
  // corTextoIndicadorNormal;
  // corTextoIndicadorExpandido;
  // // startDegreeOffset
  // final List<PieChartSectionData> listaDeSecoes;
  // final String sTituloSecao; // PieChartSectionData, title
  // final double dPosicaoTituloSecao; // titlePositionPercentageOffset entre 0 e 1
  // final List<Color> corDaSecao; // PieChartSectionData, color
  // final double dEspessuraDaSecao; // PieChartSectionData, value
  // final BorderSide contornoSecao; // BorderSide, width, color
  // final double dEspacoEntreSecoes; // sectionsSpace
  // final double dRaioSecao; // raioSecao
  // final double dRaioCentral; // centerSpaceRadius
  // final Color corVazioCentral; // centerSpaceColor
  // final bool bAnimacoes;

  const PizzaGrafico({
    super.key,
    required this.bIsDonut,
  });

  @override
  State<StatefulWidget> createState() => PizzaGraficoState();
}

class PizzaGraficoState extends State<PizzaGrafico> {
  int iTouchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Indicator(
                color: AppColors.contentColorBlue.darken(),
                text: 'One',
                isSquare: false,
                size: iTouchedIndex == 0 ? 18 : 16,
                textColor: iTouchedIndex == 0 ? Colors.black : Colors.grey,
              ),
              Indicator(
                color: AppColors.contentColorYellow,
                text: 'Two',
                isSquare: false,
                size: iTouchedIndex == 1 ? 18 : 16,
                textColor: iTouchedIndex == 1 ? Colors.black : Colors.grey,
              ),
              Indicator(
                color: AppColors.contentColorRed,
                text: 'Three',
                isSquare: false,
                size: iTouchedIndex == 2 ? 18 : 16,
                textColor: iTouchedIndex == 2 ? Colors.black : Colors.grey,
              ),
              Indicator(
                color: AppColors.contentColorGreen,
                text: 'Four',
                isSquare: false,
                size: iTouchedIndex == 3 ? 18 : 16,
                textColor: iTouchedIndex == 3 ? Colors.black : Colors.grey,
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
                  centerSpaceRadius: widget.bIsDonut ? 50 : 0,
                  centerSpaceColor: AppColors.contentColorWhite,
                  sections: desenharSecoes(widget.bIsDonut),
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
      BorderSide bordaSecao = BorderSide(width: 2, color: AppColors.contentColorBlack.withOpacity(0.5));
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.contentColorBlue.darken(),
            value: 30,
            title: 'One',
            radius: isTouched ? raioSecao + incrementoAoTocado : raioSecao,
            titlePositionPercentageOffset: 0.6,
            titleStyle: const TextStyle(fontSize: tamanhoFonte, fontWeight: FontWeight.bold, color: Colors.white),
            borderSide: bordaSecao,
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.contentColorYellow,
            value: 40,
            title: 'Two',
            radius: isTouched ? raioSecao + incrementoAoTocado : raioSecao,
            titlePositionPercentageOffset: 0.6,
            titleStyle: const TextStyle(fontSize: tamanhoFonte, fontWeight: FontWeight.bold, color: Colors.white),
            borderSide: bordaSecao,
          );
        case 2:
          return PieChartSectionData(
            color: AppColors.contentColorRed,
            value: 10,
            title: 'Three',
            radius: isTouched ? raioSecao + incrementoAoTocado : raioSecao,
            titlePositionPercentageOffset: 0.6,
            titleStyle: const TextStyle(fontSize: tamanhoFonte, fontWeight: FontWeight.bold, color: Colors.white),
            borderSide: bordaSecao,
          );
        case 3:
          return PieChartSectionData(
            color: AppColors.contentColorGreen,
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
