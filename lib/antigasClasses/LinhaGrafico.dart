// ignore_for_file: file_names

// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import '../CoresAuxiliaresGraficos.dart';

// class LinhaGrafico extends StatefulWidget {
//   List<FlSpot>? listaPontos;
//   List<FlSpot>? listaPontos2 = const [
//     FlSpot(1, 2102036),
//     FlSpot(2, 2097763),
//     FlSpot(3, 2008713),
//     FlSpot(4, 577899),
//   ];

//   int? iTipoLinha; // (1)Linha reta, (2)Área reta, (3)Linha curva, (4)Área curva, (5)Degrau, (6)Degrau com área

//   String? sTituloNome;
//   Color? oTituloCor;
//   int? iTituloExibir; // Sim, Não
//   int? iTituloCimaBaixo; // Em cima, Embaixo

//   int? iMostrarBorda; // Sim, Não
//   Color? corDaBorda;
//   int? iMostarGrid; // Mostrar vertical e horizontal, Mostrar vertical, Mostrar horizontal, Não mostrar

//   int? iPontosArredondados; // Sim, Não
//   int? iPontasArredondadas; // Sim, Não
//   int? iMostrarPontos; // Sim, Não
//   int? iPreencherArea; // Sim, Não

//   int? iEixoXAltura;
//   Color? oEixoXCor;
//   int? iEixoXExibir; // Sim, Não
//   int? iEixoXCimaBaixo; // Em cima, Embaixo
//   int? iEixoXExibirTitulo; // Sim, Não

//   int? iEixoYAltura;
//   Color? oEixoYCor;
//   int? iEixoYExibir; // Sim, Não
//   int? iEixoYEsquerdaDireita; // Esquerda, Direita
//   int? iEixoYExibirTitulo; // Sim, Não

//   double? dLinha1Espessura;
//   Color? oLinha1Cor;
//   Color? oLinha1AreaCor;
//   int? iLinha1CorGradiente; // Sim, Não
//   int? iLinha1AreaGradiente; // Sim, Não
//   int? iLinha1Tipo; // Normal, Pontilhada, Traço-ponto, Traço
//   int? iLinha1AreaCimaBaixo; // Cima, Baixo (default)
//   int? iLinha1Sombra; // Sim, Não
//   Color? oLinha1SombraCor;

//   double? dLinha2Espessura;
//   Color? oLinha2Cor;
//   Color? oLinha2AreaCor;
//   int? iLinha2CorGradiente; // Sim, Não
//   int? iLinha2AreaGradiente; // Sim, Não
//   int? iLinha2Tipo; // Normal, Pontilhada, Traço-ponto, Traço
//   int? iLinha2AreaCimaBaixo; // Cima, Baixo (default)
//   int? iLinha2Sombra; // Sim, Não
//   Color? oLinha2SombraCor;

//   double? dLinha3Espessura;
//   Color? oLinha3Cor;
//   Color? oLinha3AreaCor;
//   int? iLinha3CorGradiente; // Sim, Não
//   int? iLinha3AreaGradiente; // Sim, Não
//   int? iLinha3Tipo; // Normal, Pontilhada, Traço-ponto, Traço
//   int? iLinha3AreaCimaBaixo; // Cima, Baixo (default)
//   int? iLinha3Sombra; // Sim, Não
//   Color? oLinha3SombraCor;

//   double? dLinha4Espessura;
//   Color? oLinha4Cor;
//   Color? oLinha4AreaCor;
//   int? iLinha4CorGradiente; // Sim, Não
//   int? iLinha4AreaGradiente; // Sim, Não
//   int? iLinha4Tipo; // Normal, Pontilhada, Traço-ponto, Traço
//   int? iLinha4AreaCimaBaixo; // Cima, Baixo (default)
//   int? iLinha4Sombra; // Sim, Não
//   Color? oLinha4SombraCor;

//   // int iEspessuraLinhaDoGrid;

//   LinhaGrafico({
//     super.key,
//     this.listaPontos,
//     this.iTipoLinha,
//     this.sTituloNome,
//     this.oTituloCor,
//     this.iTituloExibir,
//     this.iTituloCimaBaixo,
//     this.iMostrarBorda,
//     this.corDaBorda,
//     this.iMostarGrid,
//     this.iPontosArredondados,
//     this.iPontasArredondadas,
//     this.iMostrarPontos,
//     this.iPreencherArea,
//     this.iEixoXAltura,
//     this.oEixoXCor,
//     this.iEixoXExibir,
//     this.iEixoXCimaBaixo,
//     this.iEixoXExibirTitulo,
//     this.iEixoYAltura,
//     this.oEixoYCor,
//     this.iEixoYExibir,
//     this.iEixoYEsquerdaDireita,
//     this.iEixoYExibirTitulo,
//     this.dLinha1Espessura,
//     this.oLinha1Cor,
//     this.oLinha1AreaCor,
//     this.iLinha1CorGradiente,
//     this.iLinha1AreaGradiente,
//     this.iLinha1Tipo,
//     this.iLinha1AreaCimaBaixo,
//     this.iLinha1Sombra,
//     this.oLinha1SombraCor,
//     this.dLinha2Espessura,
//     this.oLinha2Cor,
//     this.oLinha2AreaCor,
//     this.iLinha2CorGradiente,
//     this.iLinha2AreaGradiente,
//     this.iLinha2Tipo,
//     this.iLinha2AreaCimaBaixo,
//     this.iLinha2Sombra,
//     this.oLinha2SombraCor,
//     this.dLinha3Espessura,
//     this.oLinha3Cor,
//     this.oLinha3AreaCor,
//     this.iLinha3CorGradiente,
//     this.iLinha3AreaGradiente,
//     this.iLinha3Tipo,
//     this.iLinha3AreaCimaBaixo,
//     this.iLinha3Sombra,
//     this.oLinha3SombraCor,
//     this.dLinha4Espessura,
//     this.oLinha4Cor,
//     this.oLinha4AreaCor,
//     this.iLinha4CorGradiente,
//     this.iLinha4AreaGradiente,
//     this.iLinha4Tipo,
//     this.iLinha4AreaCimaBaixo,
//     this.iLinha4Sombra,
//     this.oLinha4SombraCor,
//   });

//   @override
//   State<StatefulWidget> createState() => LinhaGraficoState();
// }

// class LinhaGraficoState extends State<LinhaGrafico> {
//   List<Color> gradientColors = [
//     AppColors.contentColorCyan,
//     AppColors.contentColorBlue.darken(50),
//   ];
//   List<Color> gradientColors2 = [
//     AppColors.contentColorRed,
//     AppColors.contentColorRed.darken(50),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//         aspectRatio: 1,
//         child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: LayoutBuilder(builder: (context, constraints) {
//               return Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Expanded(
//                     child: LineChart(
//                       mainData(),
//                       duration: const Duration(milliseconds: 500),
//                       curve: Curves.easeInToLinear,
//                     ),
//                   ),
//                 ],
//               );
//             })));
//   }

//   Widget bottomTitleWidgets(double value, TitleMeta meta) {
//     // if (value % 1 != 0) {   // numero que nao é inteiro
//     //   return Container();
//     // }
//     const style = TextStyle(
//       fontWeight: FontWeight.normal,
//       color: AppColors.contentColorBlack,
//     );
//     return SideTitleWidget(
//       axisSide: meta.axisSide,
//       child: Text(value.toString(), style: style),
//     );
//   }

//   Widget leftTitleWidgets(double value, TitleMeta meta) {
//     const style = TextStyle(
//       fontWeight: FontWeight.bold,
//       fontSize: 14,
//     );

//     // if (!widget.listaPontos!.contains(value)) {
//     //   return Container();
//     // }

//     String text;
//     if (value >= 1000000000) {
//       text = '${(value / 1000000000).toStringAsFixed(1)}B'; // Bilhões
//     } else if (value >= 1000000) {
//       text = '${(value / 1000000).toStringAsFixed(1)}m'; // Milhões
//     } else if (value >= 1000) {
//       text = '${(value / 1000).toStringAsFixed(1)}k'; // Milhares
//     } else {
//       text = value.toStringAsFixed(0);
//     }

//     return Text(text, style: style, textAlign: TextAlign.left);
//   }

//   FlGridData configurarGrid(int? iMostarGrid) {
//     // (1) Mostrar vertical e horizontal, (2) Mostrar vertical, (3) Mostrar horizontal, Não mostrar
//     bool bDesenharGrid = true;
//     bool bDesenharGridHorizontal = false;
//     bool bDesenharGridVertical = false;

//     switch (iMostarGrid) {
//       case 1:
//         bDesenharGridHorizontal = true;
//         bDesenharGridVertical = true;
//         break;
//       case 2:
//         bDesenharGridVertical = true;
//         break;
//       case 3:
//         bDesenharGridHorizontal = true;
//         break;
//       default:
//         bDesenharGrid = false;
//         break;
//     }

//     return FlGridData(
//       show: bDesenharGrid,
//       drawHorizontalLine: bDesenharGridHorizontal,
//       getDrawingHorizontalLine: (value) => const FlLine(
//         color: Colors.grey,
//         strokeWidth: 1,
//       ),
//       drawVerticalLine: bDesenharGridVertical,
//       getDrawingVerticalLine: (value) => const FlLine(
//         color: Colors.grey,
//         strokeWidth: 1,
//       ),
//     );
//   }

//   LineChartData mainData() {
//     return LineChartData(
//       backgroundColor: Colors.transparent,
//       gridData: configurarGrid(widget.iMostarGrid),
//       titlesData: FlTitlesData(
//         show: true,
//         rightTitles: const AxisTitles(
//           sideTitles: SideTitles(showTitles: false),
//         ),
//         topTitles: const AxisTitles(
//           axisNameWidget: Text(
//             "titulo 2",
//             style: TextStyle(
//               color: Colors.blue,
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           axisNameSize: 40,
//           sideTitles: SideTitles(showTitles: false),
//         ),
//         bottomTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: true,
//             reservedSize: 30,
//             interval: 0.5,
//             getTitlesWidget: bottomTitleWidgets,
//           ),
//         ),
//         leftTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: true,
//             // interval: 1,
//             getTitlesWidget: leftTitleWidgets,
//             reservedSize: 50,
//           ),
//         ),
//       ),
//       borderData: FlBorderData(
//           show: false,
//           border: const Border(
//             left: BorderSide(color: Colors.black),
//             top: BorderSide(color: Colors.black),
//             bottom: BorderSide(color: Colors.transparent),
//             right: BorderSide(color: Colors.transparent),
//           )),
//       lineBarsData: [
//         LineChartBarData(
//           spots: widget.listaPontos!,
//           isCurved: (widget.iTipoLinha == 3 || widget.iTipoLinha == 4) ? true : false,
//           isStepLineChart: (widget.iTipoLinha == 5 || widget.iTipoLinha == 6) ? true : false,
//           gradient: LinearGradient(
//             colors: gradientColors,
//           ),
//           barWidth: 5,
//           isStrokeCapRound: true,
//           isStrokeJoinRound: true,
//           dotData: const FlDotData(
//             show: false,
//           ),
//           belowBarData: (widget.iTipoLinha == 2 || widget.iTipoLinha == 4 || widget.iTipoLinha == 6)
//               ? BarAreaData(
//                   show: true,
//                   gradient: LinearGradient(
//                     colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
//                     begin: Alignment.bottomCenter,
//                     end: Alignment.topCenter,
//                   ),
//                 )
//               : BarAreaData(show: false),
//         ),
//         LineChartBarData(
//           spots: widget.listaPontos2!,
//           isCurved: (widget.iTipoLinha == 3 || widget.iTipoLinha == 4) ? true : false,
//           isStepLineChart: (widget.iTipoLinha == 5 || widget.iTipoLinha == 6) ? true : false,
//           gradient: LinearGradient(
//             colors: gradientColors2,
//           ),
//           barWidth: 5,
//           isStrokeCapRound: true,
//           isStrokeJoinRound: true,
//           dotData: const FlDotData(
//             show: false,
//           ),
//           belowBarData: (widget.iTipoLinha == 2 || widget.iTipoLinha == 4 || widget.iTipoLinha == 6)
//               ? BarAreaData(
//                   show: true,
//                   gradient: LinearGradient(
//                     colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
//                     begin: Alignment.bottomCenter,
//                     end: Alignment.topCenter,
//                   ),
//                 )
//               : BarAreaData(show: false),
//         ),
//       ],
//     );
//   }
// }
