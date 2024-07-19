// ignore_for_file: file_names, must_be_immutable

import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRGraficoRadar.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRPainel.dart';
import 'package:flutter/material.dart';


class GraficoRadar extends StatefulWidget {
  final FPaineisRPainel? oPainelRadar;

  const GraficoRadar(this.oPainelRadar, {super.key});

  @override
  State<StatefulWidget> createState() => GraficoRadarState();
}

class GraficoRadarState extends State<GraficoRadar> {
  late FPaineisRGraficoRadar oRadar;

  @override
  void initState() {
    super.initState();
    oRadar = widget.oPainelRadar!.oGrafRadar!;
  }

  @override
  Widget build(BuildContext context) {
    return RadarChart(
      RadarChartData(
        dataSets: listaRadarSets,
        radarTouchData: RadarTouchData(enabled: true),
        radarBackgroundColor: Colors.transparent,
        radarShape: RadarShape.circle,
        radarBorderData: const BorderSide(color: Colors.black, width: 3),
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
        tickCount: 4,
        ticksTextStyle: const TextStyle(color: Colors.grey, fontSize: 10),
        tickBorderData: const BorderSide(color: Colors.black, width: 1),
        gridBorderData: const BorderSide(color: Colors.pink),
      ),
    );
  }
}

List<RadarDataSet> listaRadarSets = [
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
