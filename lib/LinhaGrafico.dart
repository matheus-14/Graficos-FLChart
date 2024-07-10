// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'CoresAuxiliaresGraficos.dart';

class LinhaGrafico extends StatefulWidget {
  final List<FlSpot> listaPontos;
  final FlGridData gridData;
  final bool bIsCurved;
  final bool bIsArea;
  final bool bIsStep;

  int iTipoLinha; // Linha reta, Linha curva, Área, Degrau, Degrau com área

  String sTituloNome;
  Color oTituloCor;
  int iTituloExibir; // Sim, Não
  int iTituloCimaBaixo; // Em cima, Embaixo

  int iMostrarBorda; // Sim, Não
  Color corDaBorda;
  int iMostarGrid; // Mostrar vertical e horizontal, Mostrar vertical, Mostrar horizontal, Não mostrar

  int iPontosArredondados; // Sim, Não
  int iPontasArredondadas; // Sim, Não
  int iMostrarPontos; // Sim, Não
  int iPreencherArea; // Sim, Não

  int iEixoXAltura;
  Color oEixoXCor;
  int iEixoXExibir; // Sim, Não
  int iEixoXCimaBaixo; // Em cima, Embaixo
  int iEixoXExibirTitulo; // Sim, Não

  int iEixoYAltura;
  Color oEixoYCor;
  int iEixoYExibir; // Sim, Não
  int iEixoYEsquerdaDireita; // Esquerda, Direita
  int iEixoYExibirTitulo; // Sim, Não

  double dLinha1Espessura;
  Color oLinha1Cor;
  Color oLinha1AreaCor;
  int iLinha1CorGradiente; // Sim, Não
  int iLinha1AreaGradiente; // Sim, Não
  int iLinha1Tipo; // Normal, Pontilhada, Traço-ponto, Traço
  int iLinha1AreaCimaBaixo; // Cima, Baixo (default)
  int iLinha1Sombra; // Sim, Não
  Color oLinha1SombraCor;

  double dLinha2Espessura;
  Color oLinha2Cor;
  Color oLinha2AreaCor;
  int iLinha2CorGradiente; // Sim, Não
  int iLinha2AreaGradiente; // Sim, Não
  int iLinha2Tipo; // Normal, Pontilhada, Traço-ponto, Traço
  int iLinha2AreaCimaBaixo; // Cima, Baixo (default)
  int iLinha2Sombra; // Sim, Não
  Color oLinha2SombraCor;

  double dLinha3Espessura;
  Color oLinha3Cor;
  Color oLinha3AreaCor;
  int iLinha3CorGradiente; // Sim, Não
  int iLinha3AreaGradiente; // Sim, Não
  int iLinha3Tipo; // Normal, Pontilhada, Traço-ponto, Traço
  int iLinha3AreaCimaBaixo; // Cima, Baixo (default)
  int iLinha3Sombra; // Sim, Não
  Color oLinha3SombraCor;

  double dLinha4Espessura;
  Color oLinha4Cor;
  Color oLinha4AreaCor;
  int iLinha4CorGradiente; // Sim, Não
  int iLinha4AreaGradiente; // Sim, Não
  int iLinha4Tipo; // Normal, Pontilhada, Traço-ponto, Traço
  int iLinha4AreaCimaBaixo; // Cima, Baixo (default)
  int iLinha4Sombra; // Sim, Não
  Color oLinha4SombraCor;



  // int iEspessuraLinhaDoGrid;

  const LinhaGrafico({
    super.key,
    required this.listaPontos,
    required this.gridData,
    required this.bIsCurved,
    required this.bIsArea,
    required this.bIsStep,
  });

  @override
  State<StatefulWidget> createState() => LinhaGraficoState();
}

class LinhaGraficoState extends State<LinhaGrafico> {
  List<Color> gradientColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue.darken(50),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const Icon(Icons.auto_graph_rounded, color: AppColors.contentColorBlue),
                  //     const SizedBox(
                  //       width: 32,
                  //     ),
                  //     Text(
                  //       'Titulo',
                  //       style: TextStyle(
                  //         color: AppColors.contentColorBlue.darken(50),
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  Expanded(
                    child: LineChart(
                      mainData(),
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInToLinear,
                    ),
                  ),
                ],
              );
            })));

    // return AspectRatio(
    //   aspectRatio: 1,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Padding(
    //         padding: const EdgeInsets.all(16),
    //         child: Text(
    //           'Evolução dos Dados',
    //           style: TextStyle(
    //             color: AppColors.contentColorBlue.darken(50),
    //             fontSize: 18,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ),
    //       Stack(
    //         children: <Widget>[
    //           AspectRatio(
    //             aspectRatio: 1.70,
    //             child: Padding(
    //               padding: const EdgeInsets.only(
    //                 right: 18,
    //                 left: 12,
    //                 top: 24,
    //                 bottom: 12,
    //               ),
    // child: LineChart(
    //   mainData(),
    //   duration: const Duration(milliseconds: 500),
    //   curve: Curves.easeInToLinear,
    // ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    if (value % 1 != 0) {
      return Container();
    }
    const style = TextStyle(
      fontWeight: FontWeight.normal,
      color: AppColors.contentColorBlack,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(value.toInt().toString(), style: style),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1m';
        break;
      case 3:
        text = '2m';
        break;
      case 5:
        text = '3m';
        break;
      case 7:
        text = '5m';
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      backgroundColor: Colors.transparent,
      gridData: widget.gridData,
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          axisNameWidget: Text(
            "titulo 2",
            style: TextStyle(
              color: AppColors.contentColorBlue.darken(50),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          axisNameSize: 40,
          // sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            // interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 30,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: const Border(
            left: BorderSide(color: AppColors.borderColor),
            top: BorderSide(color: AppColors.borderColor),
            bottom: BorderSide(color: Colors.transparent),
            right: BorderSide(color: Colors.transparent),
          )),
      lineBarsData: [
        LineChartBarData(
          spots: widget.listaPontos,
          isCurved: widget.bIsCurved,
          isStepLineChart: widget.bIsStep,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          isStrokeJoinRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: widget.bIsArea
              ? BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                )
              : BarAreaData(show: false),
        ),
      ],
    );
  }
}
