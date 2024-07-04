// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'CoresAuxiliaresGraficos.dart';

class ColunaEmpilhada extends StatefulWidget {
  ColunaEmpilhada({super.key});

  final Color dark = AppColors.contentColorCyan.darken(60);
  final Color normal = AppColors.contentColorCyan.darken(30);
  final Color light = AppColors.contentColorCyan;
  final double bordaReta = 0;
  final double bordaCurvaturaMedia = 8;
  final double bordaCurva = 16;

  @override
  State<StatefulWidget> createState() => ColunaEmpilhadaState();
}

class ColunaEmpilhadaState extends State<ColunaEmpilhada> {
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
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
      aspectRatio: 1.66,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final barsSpace = constraints.maxWidth;
            final barsWidth = constraints.maxWidth / 35;
            return BarChart(
              BarChartData(
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
                    color: AppColors.itemsBackground.withOpacity(0.2),
                    strokeWidth: 1,
                  ),
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                groupsSpace: barsSpace,
                barGroups: mainData(barsWidth, barsSpace),
              ),
            );
          },
        ),
      ),
    );
  }

  List<BarChartGroupData> mainData(double barsWidth, double barsSpace) {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 17000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 2000000000, widget.dark),
              BarChartRodStackItem(2000000000, 12000000000, widget.normal),
              BarChartRodStackItem(12000000000, 17000000000, widget.light),
            ],
            borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 13000000000, widget.dark),
          //     BarChartRodStackItem(13000000000, 14000000000, widget.normal),
          //     BarChartRodStackItem(14000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 23000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 6000000000.5, widget.dark),
          //     BarChartRodStackItem(6000000000.5, 18000000000, widget.normal),
          //     BarChartRodStackItem(18000000000, 23000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 29000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 9000000000, widget.dark),
          //     BarChartRodStackItem(9000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 29000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 2000000000.5, widget.dark),
          //     BarChartRodStackItem(2000000000.5, 17000000000.5, widget.normal),
          //     BarChartRodStackItem(17000000000.5, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 31000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 11000000000, widget.dark),
              BarChartRodStackItem(11000000000, 18000000000, widget.normal),
              BarChartRodStackItem(18000000000, 31000000000, widget.light),
            ],
            borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 35000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 14000000000, widget.dark),
          //     BarChartRodStackItem(14000000000, 27000000000, widget.normal),
          //     BarChartRodStackItem(27000000000, 35000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 31000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 8000000000, widget.dark),
          //     BarChartRodStackItem(8000000000, 24000000000, widget.normal),
          //     BarChartRodStackItem(24000000000, 31000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 15000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 6000000000.5, widget.dark),
          //     BarChartRodStackItem(6000000000.5, 12000000000.5, widget.normal),
          //     BarChartRodStackItem(12000000000.5, 15000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 17000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 9000000000, widget.dark),
          //     BarChartRodStackItem(9000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 17000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 34000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 34000000000, widget.light),
            ],
            borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 7000000000, widget.dark),
          //     BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 14000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 1000000000.5, widget.dark),
              BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
              BarChartRodStackItem(12000000000, 14000000000, widget.light),
            ],
            borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 27000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 7000000000, widget.dark),
          //     BarChartRodStackItem(7000000000, 25000000000, widget.normal),
          //     BarChartRodStackItem(25000000000, 27000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 29000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 6000000000, widget.dark),
          //     BarChartRodStackItem(6000000000, 23000000000, widget.normal),
          //     BarChartRodStackItem(23000000000, 29000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 16000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 9000000000, widget.dark),
          //     BarChartRodStackItem(9000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 16000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 15000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 7000000000, widget.dark),
          //     BarChartRodStackItem(7000000000, 12000000000.5, widget.normal),
          //     BarChartRodStackItem(12000000000.5, 15000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.circular(widget.bordaCurvaturaMedia),
          //   width: barsWidth,
          // ),
        ],
      ),
    ];
  }
}
