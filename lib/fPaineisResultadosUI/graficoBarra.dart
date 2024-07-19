// ignore_for_file: file_names, must_be_immutable

import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRGraficoBarra.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRPainel.dart';
import 'package:flutter/material.dart';

class GraficoBarra extends StatefulWidget {
  final FPaineisRPainel? oPainelBarra;

  const GraficoBarra(this.oPainelBarra, {super.key});

  // final double bordaReta = 0;
  // final double bordaCurvaturaMedia = 8;
  // final double bordaCurva = 16;

  @override
  State<StatefulWidget> createState() => GraficoBarraState();
}

class GraficoBarraState extends State<GraficoBarra> {
  late FPaineisRGraficoBarra oBarra;

  @override
  void initState() {
    super.initState();
    oBarra = widget.oPainelBarra!.oGrafBarra!;
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Apr';
        break;
      case 1:
        text = 'May';
        break;
      case 2:
        text = 'Jun';
        break;
      case 3:
        text = 'Jul';
        break;
      case 4:
        text = 'Aug';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max) {
      return Container();
    }
    const style = TextStyle(
      fontSize: 10,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final dBarsSpace = constraints.maxWidth;
            final dBarsWidth = constraints.maxWidth / 35;
            return BarChart(
              BarChartData(
                backgroundColor: Colors.transparent,
                alignment: BarChartAlignment.center,
                barTouchData: BarTouchData(
                  enabled: true,
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 28,
                      getTitlesWidget: bottomTitles,
                    ),
                  ),
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowHorizontalLine: (value) => value % 10 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: const Color(0xFF1B2339).withOpacity(0.2),
                    strokeWidth: 1,
                  ),
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                groupsSpace: dBarsSpace,
                barGroups: mainData(dBarsWidth, dBarsSpace),
              ),
            );
          },
        ),
      ),
    );
  }

  List<BarChartGroupData> mainData(double dBarsWidth, double dBarsSpace) {
    Map<int, List<double>> data = {
      0: [20000, 100000, 50000],
      1: [110000, 70000, 130000],
      2: [60000, 170000, 110000],
      3: [15000, 105000, 20000],
    };

    List<double> totalSomaBarrasEmpilhadas = [];

    data.forEach((key, value) {
      double soma = value.fold(0, (valorAnterior, elemento) => valorAnterior + elemento);
      totalSomaBarrasEmpilhadas.add(soma);
    });

    return [
      BarChartGroupData(
        x: 0,
        barsSpace: dBarsSpace,
        barRods: [
          BarChartRodData(
            toY: totalSomaBarrasEmpilhadas[0],
            rodStackItems: [
              BarChartRodStackItem(0, data[0]![0], const Color.fromARGB(255, 3, 66, 77)),
              BarChartRodStackItem(data[0]![0], data[0]![0] + data[0]![1], const Color.fromARGB(255, 18, 146, 168)),
              BarChartRodStackItem(data[0]![0] + data[0]![1], (data[0]![0] + data[0]![1]) + data[0]![2], const Color(0xFF50E4FF)),
            ],
            borderRadius: BorderRadius.circular(8),
            width: dBarsWidth,
          ),
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 13000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(13000000000, 14000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(14000000000, 24000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 23000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 6000000000.5, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(6000000000.5, 18000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(18000000000, 23000000000.5, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 29000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 9000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(9000000000, 15000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(15000000000, 29000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 2000000000.5, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(2000000000.5, 17000000000.5, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(17000000000.5, 32000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: dBarsSpace,
        barRods: [
          BarChartRodData(
            toY: totalSomaBarrasEmpilhadas[1],
            rodStackItems: [
              BarChartRodStackItem(0, data[1]![0], const Color.fromARGB(255, 3, 66, 77)),
              BarChartRodStackItem(data[1]![0], data[1]![0] + data[1]![1], const Color.fromARGB(255, 18, 146, 168)),
              BarChartRodStackItem(data[1]![0] + data[1]![1], (data[1]![0] + data[1]![1]) + data[1]![2], const Color(0xFF50E4FF)),
            ],
            borderRadius: BorderRadius.circular(8),
            width: dBarsWidth,
          ),
          // BarChartRodData(
          //   toY: 35000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 14000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(14000000000, 27000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(27000000000, 35000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 31000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 8000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(8000000000, 24000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(24000000000, 31000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 15000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 6000000000.5, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(6000000000.5, 12000000000.5, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(12000000000.5, 15000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 17000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 9000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(9000000000, 15000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(15000000000, 17000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: dBarsSpace,
        barRods: [
          BarChartRodData(
            toY: totalSomaBarrasEmpilhadas[2],
            rodStackItems: [
              BarChartRodStackItem(0, data[2]![0], const Color.fromARGB(255, 3, 66, 77)),
              BarChartRodStackItem(data[2]![0], data[2]![0] + data[2]![1], const Color.fromARGB(255, 18, 146, 168)),
              BarChartRodStackItem(data[2]![0] + data[2]![1], (data[2]![0] + data[2]![1]) + data[2]![2], const Color(0xFF50E4FF)),
            ],
            borderRadius: BorderRadius.circular(8),
            width: dBarsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 7000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(7000000000, 24000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(24000000000, 32000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(1000000000.5, 12000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(12000000000, 14000000000.5, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(4000000000, 15000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(15000000000, 20000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(4000000000, 15000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(15000000000, 24000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: dBarsSpace,
        barRods: [
          BarChartRodData(
            toY: totalSomaBarrasEmpilhadas[3],
            rodStackItems: [
              BarChartRodStackItem(0, data[3]![0], const Color.fromARGB(255, 3, 66, 77)),
              BarChartRodStackItem(data[3]![0], data[3]![0] + data[3]![1], const Color.fromARGB(255, 18, 146, 168)),
              BarChartRodStackItem(data[3]![0] + data[3]![1], (data[3]![0] + data[3]![1]) + data[3]![2], const Color(0xFF50E4FF)),
            ],
            borderRadius: BorderRadius.circular(8),
            width: dBarsWidth,
          ),

          // BarChartRodData(
          //   toY: 27000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 7000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(7000000000, 25000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(25000000000, 27000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 29000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 6000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(6000000000, 23000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(23000000000, 29000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 16000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 9000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(9000000000, 15000000000, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(15000000000, 16000000000.5, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
          // BarChartRodData(
          //   toY: 15000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 7000000000, const Color.fromARGB(255, 3, 66, 77)),
          //     BarChartRodStackItem(7000000000, 12000000000.5, const Color.fromARGB(255, 18, 146, 168)),
          //     BarChartRodStackItem(12000000000.5, 15000000000, const Color(0xFF50E4FF)),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: dBarsWidth,
          // ),
        ],
      ),
    ];
  }
}
