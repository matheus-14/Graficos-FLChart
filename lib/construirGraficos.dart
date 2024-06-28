// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ConstruirGraficos {
  Gradient? cores = const LinearGradient(
    colors: [
      Color.fromARGB(255, 70, 167, 247),
      Color.fromARGB(255, 230, 79, 68),
      Colors.purple,
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  Color areaColor = Colors.cyan.withOpacity(0.3);

  List<BarChartGroupData>? barrasColunas = [
    BarChartGroupData(x: 0, barRods: [
      BarChartRodData(
        toY: 5,
        color: Colors.amber,
        width: 20,
      )
    ]),
    BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 3, color: Colors.blue, width: 20)]),
    BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 7, color: Colors.green, width: 20)]),
    BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 2, color: Colors.pink, width: 20)]),
    BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 6, color: Colors.orange, width: 20)]),
  ];

  // Linhas, Area, Area Curva, Area em bloco, Linhas Curvas, Linhas em bloco
  Widget construirGraficoLinhas(List<FlSpot> listaPontos, FlGridData gridData, bool bIsCurved, bool bIsArea, bool bIsStep) {
    return LineChart(
      LineChartData(
        gridData: gridData,
        lineBarsData: [
          LineChartBarData(
            show: true,
            spots: listaPontos,
            gradient: cores,
            barWidth: 4,
            isCurved: bIsCurved,
            isStrokeCapRound: true,
            isStepLineChart: bIsStep,
            belowBarData: bIsArea
                ? BarAreaData(
                    show: true,
                    color: areaColor,
                  )
                : null,
          ),
        ],
      ),
    );
  }

  // Widget construirGraficoBarrasEmpilhadas(FlGridData gridData) {
  //   return BarChart(
  //     BarChartData(
  //       alignment: BarChartAlignment.center,
  //       barTouchData: BarTouchData(
  //         enabled: false,
  //       ),
  //       titlesData: const FlTitlesData(
  //         show: true,
  //         bottomTitles: AxisTitles(
  //           sideTitles: SideTitles(
  //             showTitles: true,
  //             reservedSize: 28,
  //           ),
  //         ),
  //         leftTitles: AxisTitles(
  //           sideTitles: SideTitles(
  //             showTitles: true,
  //             reservedSize: 40,
  //           ),
  //         ),
  //         topTitles: AxisTitles(
  //           sideTitles: SideTitles(showTitles: false),
  //         ),
  //         rightTitles: AxisTitles(
  //           sideTitles: SideTitles(showTitles: false),
  //         ),
  //       ),
  //       gridData: gridData,
  //       borderData: FlBorderData(
  //         show: false,
  //       ),
  //     ),
  //   );
  // }

  // Barras, Colunas
  Widget construirGraficoBarras(FlGridData gridData, List<BarChartGroupData>? listaBarras, bool bIsColunas) {
    int barraOuColuna = bIsColunas ? 0 : 1;

    return RotatedBox(
      quarterTurns: barraOuColuna,
      child: BarChart(
        BarChartData(
          gridData: gridData,
          barGroups: listaBarras,
        ),
      ),
    );
  }

  // Pizza e Rosca
  Widget construirGraficoPizza(double dRadius, bool bIsRosca) {
    double dEspacoCentro = bIsRosca ? 150 : 0;

    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(value: 10, color: Colors.amber, radius: dRadius),
          PieChartSectionData(value: 20, color: Colors.blue, radius: dRadius),
          PieChartSectionData(value: 30, color: Colors.green, radius: dRadius),
          PieChartSectionData(value: 40, color: Colors.pink, radius: dRadius),
        ],
        centerSpaceRadius: dEspacoCentro,
        centerSpaceColor: Colors.black12,
      ),
    );
  }

  Widget controllerGrafico(int iIndex, List<FlSpot> listaPontos, FlGridData gridData) {
    switch (iIndex) {
      case 0: // Linhas
        return construirGraficoLinhas(listaPontos, gridData, false, false, false);
      case 2: // Area - reta
        return construirGraficoLinhas(listaPontos, gridData, false, true, false);
      case 3: // Area curva
        return construirGraficoLinhas(listaPontos, gridData, true, true, false);
      case 4: // Area em bloco
        return construirGraficoLinhas(listaPontos, gridData, false, true, true);
      case 7: // Colunas
        return construirGraficoBarras(gridData, barrasColunas, true);
      case 10: // Barras
        return construirGraficoBarras(gridData, barrasColunas, false);
      case 13: // Linhas Curvas
        return construirGraficoLinhas(listaPontos, gridData, true, false, false);
      case 14: // Linhas em Bloco
        return construirGraficoLinhas(listaPontos, gridData, true, false, true);
      case 15: // Pizza
        return construirGraficoPizza(250, false);
      case 16: // Rosca
        return construirGraficoPizza(70, true);
      default:
        return const Center(child: Text("Gráfico indisponível"));
    }
  }
}
