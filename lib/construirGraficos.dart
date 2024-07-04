// ignore_for_file: file_names

import 'package:fl_chart_test/ColunaEmpilhada.dart';
import 'package:fl_chart_test/ColunaGrafico.dart';
import 'package:fl_chart_test/LinhaGrafico.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'PizzaGrafico.dart';

class ConstruirGraficos {
  Gradient? cores = const LinearGradient(
    colors: [
      Color.fromARGB(255, 70, 167, 247),
      Color.fromARGB(255, 230, 79, 68),
      Colors.purple,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  Color areaColor = Colors.cyan.withOpacity(0.3);

  List<BarChartGroupData>? barrasColunas = [
    BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 5, color: const Color.fromARGB(255, 21, 93, 153), width: 40, borderRadius: BorderRadius.zero)]),
    BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 3, color: Colors.blue, width: 40, borderRadius: BorderRadius.zero)]),
    BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 7, color: const Color.fromARGB(255, 1, 144, 163), width: 40, borderRadius: BorderRadius.zero)]),
    BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 2, color: Colors.cyan, width: 40, borderRadius: BorderRadius.zero)]),
    BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 6, color: const Color.fromARGB(255, 169, 236, 245), width: 40, borderRadius: BorderRadius.zero)]),
  ];

  List<RadarDataSet>? listaRadarSets = [
    RadarDataSet(
      fillColor: Colors.blue.withOpacity(0.4),
      borderColor: Colors.blue,
      entryRadius: 4,
      dataEntries: [
        const RadarEntry(value: 2),
        const RadarEntry(value: 3),
        const RadarEntry(value: 4),
        const RadarEntry(value: 5),
        const RadarEntry(value: 1),
      ],
    ),
    RadarDataSet(
      fillColor: Colors.yellow.withOpacity(0.4),
      borderColor: Colors.yellow,
      entryRadius: 2,
      dataEntries: [
        const RadarEntry(value: 5),
        const RadarEntry(value: 2),
        const RadarEntry(value: 2),
        const RadarEntry(value: 1),
        const RadarEntry(value: 4),
      ],
    ),
  ];

  List<ScatterSpot> listaDispersaoPontos = [
    ScatterSpot(
      2,
      3,
      show: true,
      dotPainter: FlDotCirclePainter(
        radius: 20,
        color: Colors.red,
        strokeWidth: 2,
        strokeColor: Colors.black,
      ),
    ),
    ScatterSpot(
      4,
      5,
      show: true,
      dotPainter: FlDotCirclePainter(
        radius: 60,
        color: Colors.blue,
        strokeWidth: 2,
        strokeColor: Colors.black,
      ),
    ),
    ScatterSpot(
      6,
      7,
      show: true,
      dotPainter: FlDotCirclePainter(
        radius: 8,
        color: Colors.green,
        strokeWidth: 2,
        strokeColor: Colors.black,
      ),
    ),
    ScatterSpot(
      8,
      9,
      show: true,
      dotPainter: FlDotCirclePainter(
        radius: 5,
        color: Colors.orange,
        strokeWidth: 2,
        strokeColor: Colors.black,
      ),
    ),
    ScatterSpot(
      1,
      2,
      show: true,
      dotPainter: FlDotCirclePainter(
        radius: 7,
        color: Colors.purple,
        strokeWidth: 2,
        strokeColor: Colors.black,
      ),
    ),
  ];

  List<BarChartGroupData> listaBarraEmpilhada = [
    BarChartGroupData(
      x: 0,
      barsSpace: 5,
      barRods: [
        BarChartRodData(
          toY: 17000,
          rodStackItems: [
            BarChartRodStackItem(0, 2000, const Color.fromARGB(255, 21, 93, 153)),
            BarChartRodStackItem(2000, 12000, Colors.cyan),
            BarChartRodStackItem(12000, 17000, const Color.fromARGB(255, 169, 236, 245)),
          ],
          borderRadius: BorderRadius.zero,
          width: 15,
        ),
        BarChartRodData(
          toY: 24000,
          rodStackItems: [
            BarChartRodStackItem(0, 13000, const Color.fromARGB(255, 21, 93, 153)),
            BarChartRodStackItem(13000, 14000, Colors.cyan),
            BarChartRodStackItem(14000, 24000, const Color.fromARGB(255, 169, 236, 245)),
          ],
          borderRadius: BorderRadius.zero,
          width: 15,
        ),
        BarChartRodData(
          toY: 23000.5,
          rodStackItems: [
            BarChartRodStackItem(0, 6000.5, const Color.fromARGB(255, 21, 93, 153)),
            BarChartRodStackItem(6000.5, 18000, Colors.cyan),
            BarChartRodStackItem(18000, 23000.5, const Color.fromARGB(255, 169, 236, 245)),
          ],
          borderRadius: BorderRadius.zero,
          width: 15,
        ),
        BarChartRodData(
          toY: 29000,
          rodStackItems: [
            BarChartRodStackItem(0, 9000, const Color.fromARGB(255, 21, 93, 153)),
            BarChartRodStackItem(9000, 15000, Colors.cyan),
            BarChartRodStackItem(15000, 29000, const Color.fromARGB(255, 169, 236, 245)),
          ],
          borderRadius: BorderRadius.zero,
          width: 15,
        ),
        BarChartRodData(
          toY: 32000,
          rodStackItems: [
            BarChartRodStackItem(0, 2000.5, const Color.fromARGB(255, 21, 93, 153)),
            BarChartRodStackItem(2000.5, 17000.5, Colors.cyan),
            BarChartRodStackItem(17000.5, 32000, const Color.fromARGB(255, 169, 236, 245)),
          ],
          borderRadius: BorderRadius.zero,
          width: 15,
        ),
      ],
    ),
    BarChartGroupData(
      x: 1,
      barsSpace: 5,
      barRods: [
        BarChartRodData(
          toY: 31000,
          rodStackItems: [
            BarChartRodStackItem(0, 11000, const Color.fromARGB(255, 21, 93, 153)),
            BarChartRodStackItem(11000, 18000, Colors.cyan),
            BarChartRodStackItem(18000, 31000, const Color.fromARGB(255, 169, 236, 245)),
          ],
          borderRadius: BorderRadius.zero,
          width: 15,
        ),
        BarChartRodData(
          toY: 35000,
          rodStackItems: [
            BarChartRodStackItem(0, 14000, const Color.fromARGB(255, 21, 93, 153)),
            BarChartRodStackItem(14000, 27000, Colors.cyan),
            BarChartRodStackItem(27000, 35000, const Color.fromARGB(255, 169, 236, 245)),
          ],
          borderRadius: BorderRadius.zero,
          width: 15,
        ),
        BarChartRodData(
          toY: 31000,
          rodStackItems: [
            BarChartRodStackItem(0, 8000, const Color.fromARGB(255, 21, 93, 153)),
            BarChartRodStackItem(8000, 24000, Colors.cyan),
            BarChartRodStackItem(24000, 31000, const Color.fromARGB(255, 169, 236, 245)),
          ],
          borderRadius: BorderRadius.zero,
          width: 15,
        ),
        BarChartRodData(
          toY: 15000,
          rodStackItems: [
            BarChartRodStackItem(0, 6000.5, const Color.fromARGB(255, 21, 93, 153)),
            BarChartRodStackItem(6000.5, 12000.5, Colors.cyan),
            BarChartRodStackItem(12000.5, 15000, const Color.fromARGB(255, 169, 236, 245)),
          ],
          borderRadius: BorderRadius.zero,
          width: 15,
        ),
        BarChartRodData(
          toY: 17000,
          rodStackItems: [
            BarChartRodStackItem(0, 9000, const Color.fromARGB(255, 21, 93, 153)),
            BarChartRodStackItem(9000, 15000, Colors.cyan),
            BarChartRodStackItem(15000, 17000, const Color.fromARGB(255, 169, 236, 245)),
          ],
          borderRadius: BorderRadius.zero,
          width: 15,
        ),
      ],
    ),
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
            barWidth: 15,
            isCurved: bIsCurved,
            isStrokeCapRound: false,
            isStrokeJoinRound: true,
            dotData: FlDotData(
                show: false,
                checkToShowDot: (FlSpot listaPontos, LineChartBarData barData) {
                  return listaPontos.x % 2 == 0;
                }),
            isStepLineChart: bIsStep,
            preventCurveOverShooting: true,
            belowBarData: bIsArea
                ? BarAreaData(
                    show: true,
                    color: areaColor,
                  )
                : null,
          ),
        ],
      ),
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInToLinear,
    );
  }

  // Barras, Colunas, Empilhadas
  Widget construirGraficoBarras(FlGridData gridData, List<BarChartGroupData>? listaBarras, bool bIsColunas, bool bIsEmpilhada) {
    int barraOuColuna = bIsColunas ? 0 : 1;

    return RotatedBox(
      quarterTurns: barraOuColuna,
      child: BarChart(
        BarChartData(
          gridData: gridData,
          barGroups: listaBarras,
        ),
        swapAnimationDuration: const Duration(milliseconds: 1000),
        swapAnimationCurve: Curves.decelerate,
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
      swapAnimationDuration: const Duration(milliseconds: 500),
      swapAnimationCurve: Curves.decelerate,
    );
  }

  // Radar
  Widget construirGraficoRadar() {
    return RadarChart(
      RadarChartData(
        dataSets: listaRadarSets,
        radarTouchData: RadarTouchData(enabled: true),
        // radarBackgroundColor: Colors.grey,
        // radarShape: RadarShape.polygon,
        // radarBorderData: const BorderSide(color: Colors.pink, width: 4),

        titlePositionPercentageOffset: 0.05,
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 14),
        getTitle: (index, angle) {
          switch (index) {
            case 0:
              return RadarChartTitle(text: 'AAAAAA', angle: angle);
            case 1:
              return RadarChartTitle(text: 'BBBBBB', angle: angle);
            case 2:
              return RadarChartTitle(text: 'CCCCCC', angle: angle);
            case 3:
              return RadarChartTitle(text: 'DDDDDD', angle: angle);
            case 4:
              return RadarChartTitle(text: 'EEEEEE', angle: angle);
            default:
              return const RadarChartTitle(text: '');
          }
        },
        tickCount: 5,
        ticksTextStyle: const TextStyle(color: Colors.grey, fontSize: 10),
        tickBorderData: const BorderSide(color: Colors.black),
        gridBorderData: const BorderSide(color: Colors.pink),
      ),
    );
  }

  // Dispersão
  Widget construirGraficoDispersao() {
    return ScatterChart(ScatterChartData(
      scatterSpots: listaDispersaoPontos,
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 10,
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: Colors.black, width: 1),
      ),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingHorizontalLine: (value) => const FlLine(
          color: Colors.grey,
          strokeWidth: 1,
        ),
        drawVerticalLine: true,
        getDrawingVerticalLine: (value) => const FlLine(
          color: Colors.grey,
          strokeWidth: 1,
        ),
      ),
      titlesData: const FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          axisNameWidget: Text('X Axis'),
          sideTitles: SideTitles(showTitles: true),
        ),
        leftTitles: AxisTitles(
          axisNameWidget: Text('Y Axis'),
          sideTitles: SideTitles(showTitles: true),
        ),
      ),
    ));
  }

  Widget controllerGrafico(int iIndex, List<FlSpot> listaPontos, FlGridData gridData) {
    switch (iIndex) {
      case 0: // Linhas
        // return construirGraficoLinhas(listaPontos, gridData, false, false, false);
        return LinhaGrafico(listaPontos: listaPontos, gridData: gridData, bIsCurved: false, bIsArea: false, bIsStep: false);
      case 2: // Area - reta
        // return construirGraficoLinhas(listaPontos, gridData, false, true, false);
        return LinhaGrafico(listaPontos: listaPontos, gridData: gridData, bIsCurved: false, bIsArea: true, bIsStep: false);
      case 3: // Area curva
        // return construirGraficoLinhas(listaPontos, gridData, true, true, false);
        return LinhaGrafico(listaPontos: listaPontos, gridData: gridData, bIsCurved: true, bIsArea: true, bIsStep: false);
      case 4: // Area em bloco
        // return construirGraficoLinhas(listaPontos, gridData, false, true, true);
        return LinhaGrafico(listaPontos: listaPontos, gridData: gridData, bIsCurved: false, bIsArea: true, bIsStep: true);
      case 7: // Colunas
        // return construirGraficoBarras(gridData, barrasColunas, true, false);
        return ColunaGrafico(listaBarras: barrasColunas, mostrarGrid: true, bIsColunas: true, bIsEmpilhada: false);
      case 8: // Coluna empilhada
        // return construirGraficoBarras(gridData, listaBarraEmpilhada, true, true);
        return ColunaEmpilhada();
      case 10: // Barras
        return construirGraficoBarras(gridData, barrasColunas, false, true);
      case 11: // Barras empilhadas
        return construirGraficoBarras(gridData, listaBarraEmpilhada, false, true);
      case 13: // Linhas Curvas
        return construirGraficoLinhas(listaPontos, gridData, true, false, false);
      case 14: // Linhas em Bloco
        return construirGraficoLinhas(listaPontos, gridData, true, false, true);
      case 15: // Pizza
        // return construirGraficoPizza(250, false);
        return const PizzaGrafico(bIsDonut: false);
      case 16: // Rosca
        // return construirGraficoPizza(70, true);
        return const PizzaGrafico(bIsDonut: true);
      case 17: // Dispersão
        return construirGraficoDispersao();
      case 18: // Radar
        return construirGraficoRadar();
      // return RadarGrafico();
      default:
        return const Center(child: Text("Gráfico indisponível"));
    }
  }
}
