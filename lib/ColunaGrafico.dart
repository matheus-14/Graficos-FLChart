// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'CoresAuxiliaresGraficos.dart';

class ColunaGrafico extends StatefulWidget {
  final List<BarChartGroupData>? listaBarras;
  final bool mostrarGrid;
  final bool bIsColunas;
  final bool bIsEmpilhada;

  final double bordaReta = 0;
  final double bordaCurvaturaMedia = 8;
  final double bordaCurva = 16;
  final Color barColor = AppColors.contentColorVinho;

  const ColunaGrafico({
    super.key,
    required this.listaBarras,
    required this.mostrarGrid,
    required this.bIsColunas,
    required this.bIsEmpilhada,
  });

  @override
  State<StatefulWidget> createState() => ColunaGraficoState();
}

class ColunaGraficoState extends State<ColunaGrafico> {
  int touchedIndex = -1;
  List<double> tamanhoBarras = [130.0, 220.0, 180.0, 75.0, 100.0, 130.0, 240.0];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final barsSpace = constraints.maxWidth / 50;
            final barsWidth = constraints.maxWidth / 40; // empessura das barras
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.shopify),
                    const SizedBox(
                      width: 32,
                    ),
                    Text(
                      'Vendas da semana',
                      style: TextStyle(
                        color: widget.barColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Expanded(
                  child: BarChart(BarChartData(
                    barTouchData: BarTouchData(
                      enabled: true,
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: getTitles,
                          reservedSize: 38,
                        ),
                      ),
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          reservedSize: 35,
                          showTitles: true,
                        ),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false, // mostrar borda do grafico
                    ),
                    gridData: FlGridData(
                      // configurar grid
                      show: widget.mostrarGrid,
                      drawHorizontalLine: true,
                      horizontalInterval: 50.0,
                      checkToShowHorizontalLine: (value) => value % 50 == 0,
                      getDrawingHorizontalLine: (value) => const FlLine(
                        color: Color.fromARGB(255, 51, 17, 17),
                        strokeWidth: 0.5,
                      ),
                      // getDrawingVerticalLine: (value) => const FlLine(
                      //   color: Color.fromARGB(255, 51, 17, 17),
                      //   strokeWidth: 0.5,
                      // ),
                    ),
                    groupsSpace: barsSpace,
                    barGroups: List.generate(
                        tamanhoBarras.length,
                        (i) => montarGrupoDeBarras(
                              i,
                              tamanhoBarras[i],
                              barsWidth,
                            )),
                  )
                      // swapAnimationDuration: const Duration(milliseconds: 500),
                      // swapAnimationCurve: Curves.fastOutSlowIn,
                      ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  BarChartGroupData montarGrupoDeBarras(
    int x,
    double y,
    double barsWidth,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: x >= 2 ? Colors.yellow[100] : widget.barColor,
          borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          borderDashArray: x >= 5 ? [4, 4] : null,
          width: barsWidth,
          borderSide: BorderSide(color: widget.barColor, width: 2.0),
        ),
      ],
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color.fromARGB(255, 104, 14, 14),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    List<String> days = ['S', 'T', 'Q', 'Q', 'S', 'S', 'D'];

    Widget text = Text(
      days[value.toInt()],
      style: style,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }
}
