//ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

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

class DispersaoGrafico extends StatefulWidget {
  final List<ScatterSpot> listaDispersaoPontos;

  // List<double> lRaioDosPontos;
  // String sTitulo;
  // int iPosicaoTitulos;
  // Color corDeFundo;
  // bool bMostrarBorda;
  // Color corBorda;
  // Color corGrid;
  // bool bTouchData;
  // bool bMostarGrid;
  // bool bMostarNumerosNoGrid;

  // Icon iconeDoTitulo;
  // Color corDoIcone;
  // String sTituloGeral;
  // Color corTituloGeral;
  // int iTamanhoTituloGeral;
  // Color corDeFundo;
  // bool bMostarGrid;
  // bool bMostarGridVertical;
  // bool bMostarGridHorizontal;
  // bool bMostrarNumerosGridDireita;
  // bool bMostrarNumerosGridEsquerda;
  // bool bMostrarNumerosGridTopo;
  // bool bMostrarNumerosGridBottom;
  // int iEspessuraLinhaDoGrid;

  const DispersaoGrafico({
    super.key,
    required this.listaDispersaoPontos,
  });

  @override
  State<StatefulWidget> createState() => DispersaoGraficoState();
}

class DispersaoGraficoState extends State<DispersaoGrafico> {
  @override
  Widget build(BuildContext context) {
    return ScatterChart(ScatterChartData(
      scatterSpots: widget.listaDispersaoPontos,
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
}
