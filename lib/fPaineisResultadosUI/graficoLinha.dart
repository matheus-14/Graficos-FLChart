// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRGraficoLinha.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRPainel.dart';
import 'package:fl_chart_test/funcoes/fGraficosBI.dart';
import 'package:flutter/material.dart';


class GraficoLinha extends StatefulWidget {
  final FPaineisRPainel? oPainelLinha;

  const GraficoLinha(this.oPainelLinha, {super.key});

  @override
  State<StatefulWidget> createState() => GraficoLinhaState();
}

class GraficoLinhaState extends State<GraficoLinha> {
  late FPaineisRGraficoLinha oLinha;

  @override
  void initState() {
    super.initState();
    oLinha = widget.oPainelLinha!.oGrafLinha!;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: LineChart(
                    mainData(),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInToLinear,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    // if (value % 1 != 0) {   // numero que nao é inteiro
    //   return Container();
    // }
    const style = TextStyle(
      fontWeight: FontWeight.normal,
      // color: Colors.black,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(value.toString(), style: style),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );

    String text;
    if (value >= 1000000000) {
      text = '${(value / 1000000000).toStringAsFixed(1)}B'; // Bilhões
    } else if (value >= 1000000) {
      text = '${(value / 1000000).toStringAsFixed(1)}M'; // Milhões
    } else if (value >= 1000) {
      text = '${(value / 1000).toStringAsFixed(1)}K'; // Milhares
    } else {
      text = value.toStringAsFixed(0);
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  // FlTitlesData configurarTitulo(int? iTituloExibir, int? iTituloCimaBaixo, Widget Function(double, TitleMeta) estiloTitulo) {
  //   if (iTituloExibir != 1) {
  //     return const FlTitlesData(show: false);
  //   }

  //   AxisTitles titulo;
  //   if (iTituloCimaBaixo == 1) {
  //     titulo = AxisTitles(
  //       axisNameWidget: Text(
  //         oLinha.sTituloNome!,
  //         style: const TextStyle(
  //           // color: Color(oLinha.oTituloCor),
  //           fontSize: 18,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       axisNameSize: 40,
  //       sideTitles: const SideTitles(showTitles: false),
  //     );
  //   } else {
  //     titulo = AxisTitles(
  //       sideTitles: SideTitles(
  //         showTitles: true,
  //         reservedSize: double.parse("${oLinha.iEixoYAltura}"),
  //         interval: 1,
  //         getTitlesWidget: bottomTitleWidgets,
  //       ),
  //     );
  //   }

  //   return FlTitlesData(
  //     show: iTituloExibir == 1,
  //     topTitles: titulo,
  //     bottomTitles: titulo,
  //   );
  // }

  LineChartData mainData() {
    return LineChartData(
      backgroundColor: Colors.transparent,
      gridData: FGraficos().configurarGrid(oLinha.iMostarGrid),
      titlesData: FGraficos().configurarTitulo(
        oLinha.iTituloExibir == 1,
        oLinha.sTituloNome!,
        double.parse("${oLinha.iEixoYAltura}"),
        oLinha.iTituloCimaBaixo!,
        bottomTitleWidgets: bottomTitleWidgets,
        leftTitleWidgets: leftTitleWidgets,
      ),
      // FlTitlesData(
      //   show: oLinha.iTituloExibir == 1,
      //   rightTitles: const AxisTitles(
      //     sideTitles: SideTitles(showTitles: false),
      //   ),
      //   topTitles: AxisTitles(
      //     axisNameWidget: Text(
      //       oLinha.sTituloNome!, //"titulo 2",
      //       style: const TextStyle(
      //         // color: Color(oLinha.oTituloCor),
      //         fontSize: 18,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     axisNameSize: 40,
      //     sideTitles: const SideTitles(showTitles: false),
      //   ),
      //   bottomTitles: AxisTitles(
      //     sideTitles: SideTitles(
      //       showTitles: true,
      //       reservedSize: double.parse("${oLinha.iEixoYAltura}"),
      //       interval: 1,
      //       getTitlesWidget: bottomTitleWidgets,
      //     ),
      //   ),
      //   leftTitles: AxisTitles(
      //     sideTitles: SideTitles(
      //       showTitles: true,
      //       // interval: 1,
      //       getTitlesWidget: leftTitleWidgets,
      //       reservedSize: 50,
      //     ),
      //   ),
      // ),

      borderData: FlBorderData(
        show: oLinha.iMostrarBorda! == 1,
        border: const Border(
          left: BorderSide(color: Colors.black),
          top: BorderSide(color: Colors.black),
          bottom: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
        ),
      ),

      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(1, 10),
            FlSpot(2, 5),
            FlSpot(3, 7),
            FlSpot(4, 2),
          ],
          isCurved: true,
          isStepLineChart: false,
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 70, 167, 247),
              Color.fromARGB(255, 230, 79, 68),
              Colors.purple,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          isStrokeJoinRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          // belowBarData: (widget.iTipoLinha == 2 || widget.iTipoLinha == 4 || widget.iTipoLinha == 6)
          //     ? BarAreaData(
          //         show: true,
          //         gradient: LinearGradient(
          //           colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          //           begin: Alignment.bottomCenter,
          //           end: Alignment.topCenter,
          //         ),
          //       )
          //     : BarAreaData(show: false),
        ),
      ],
      // lineBarsData: [
      //   LineChartBarData(
      //     spots: widget.listaPontos!,
      //     isCurved: (widget.iTipoLinha == 3 || widget.iTipoLinha == 4) ? true : false,
      //     isStepLineChart: (widget.iTipoLinha == 5 || widget.iTipoLinha == 6) ? true : false,
      //     gradient: LinearGradient(
      //       colors: gradientColors,
      //     ),
      //     barWidth: 5,
      //     isStrokeCapRound: true,
      //     isStrokeJoinRound: true,
      //     dotData: const FlDotData(
      //       show: false,
      //     ),
      //     belowBarData: (widget.iTipoLinha == 2 || widget.iTipoLinha == 4 || widget.iTipoLinha == 6)
      //         ? BarAreaData(
      //             show: true,
      //             gradient: LinearGradient(
      //               colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
      //               begin: Alignment.bottomCenter,
      //               end: Alignment.topCenter,
      //             ),
      //           )
      //         : BarAreaData(show: false),
      //   ),
      // ],
    );
  }
}
