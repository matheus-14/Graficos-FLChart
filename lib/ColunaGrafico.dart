// ignore_for_file: file_names

import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'CoresAuxiliaresGraficos.dart';

class ColunaGrafico extends StatefulWidget {
  ColunaGrafico({super.key});

  final Color barBackgroundColor = const Color.fromARGB(255, 82, 39, 39).darken().withOpacity(0.3);
  final Color barColor = AppColors.contentColorVinho;

  @override
  State<StatefulWidget> createState() => ColunaGraficoState();
}

class ColunaGraficoState extends State<ColunaGrafico> {
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
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
                  'Vendas na semana',
                  style: TextStyle(
                    color: widget.barColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: BarChart(
                randomData(),
                swapAnimationDuration: const Duration(milliseconds: 500),
                swapAnimationCurve: Curves.fastOutSlowIn,
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: x >= 2 ? Colors.transparent : widget.barColor,
          borderRadius: BorderRadius.zero,
          borderDashArray: x >= 5 ? [4, 4] : null,
          width: 20,
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

  BarChartData randomData() {
    return BarChartData(
      maxY: 300.0,
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
        show: false,
      ),
      gridData: FlGridData(
        show: true,
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
      barGroups: List.generate(
        7,
        (i) => makeGroupData(
          i,
          Random().nextInt(290).toDouble() + 10,
        ),
      ),
    );
  }
}
