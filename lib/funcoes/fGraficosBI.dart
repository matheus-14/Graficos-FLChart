// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRPainel.dart';
import 'package:fl_chart_test/fPaineisResultadosUI/graficoBarra.dart';
import 'package:fl_chart_test/fPaineisResultadosUI/graficoDispersao.dart';
import 'package:fl_chart_test/fPaineisResultadosUI/graficoLinha.dart';
import 'package:fl_chart_test/fPaineisResultadosUI/graficoPizza.dart';
import 'package:fl_chart_test/fPaineisResultadosUI/graficoRadar.dart';
import 'package:flutter/material.dart';

class FGraficos {
  static Widget controllerGrafico(FPaineisRPainel oPainelPrincipal) {
    switch (oPainelPrincipal.iTipoGrafico) {
      case 0: // Linhas
        return GraficoLinha(oPainelPrincipal);
      case 1: // Barras
        return GraficoBarra(oPainelPrincipal);
      case 2: // Pizza
        return GraficoPizza(oPainelPrincipal);
      case 3: // Dispersão
        return GraficoDispersao(oPainelPrincipal);
      case 4: // Radar
        return GraficoRadar(oPainelPrincipal);
      default:
        return const Center(child: Text("Gráfico indisponível"));
    }
  }

  FlGridData configurarGrid(int? iMostarGrid) {
    bool bDesenharGrid = true;
    bool bDesenharGridHorizontal = false;
    bool bDesenharGridVertical = false;

    switch (iMostarGrid) {
      case 1: // (1) Mostrar vertical e horizontal
        bDesenharGridHorizontal = true;
        bDesenharGridVertical = true;
        break;
      case 2: // (2) Mostrar vertical
        bDesenharGridVertical = true;
        break;
      case 3: // (3) Mostrar horizontal
        bDesenharGridHorizontal = true;
        break;
      default: // Não mostrar
        bDesenharGrid = false;
        break;
    }

    return FlGridData(
      show: bDesenharGrid,
      drawHorizontalLine: bDesenharGridHorizontal,
      getDrawingHorizontalLine: (value) => const FlLine(
        color: Colors.grey,
        strokeWidth: 1,
      ),
      drawVerticalLine: bDesenharGridVertical,
      getDrawingVerticalLine: (value) => const FlLine(
        color: Colors.grey,
        strokeWidth: 1,
      ),
    );
  }

  FlTitlesData configurarTitulo(
    bool iTituloExibir,
    String sTituloNome,
    double iEixoYAltura,
    int iTituloCimaBaixo, {
    // Color? oTituloCor,
    Widget Function(double, TitleMeta)? topTitleWidgets,
    Widget Function(double, TitleMeta)? bottomTitleWidgets,
    Widget Function(double, TitleMeta)? leftTitleWidgets,
    Widget Function(double, TitleMeta)? rightTitleWidgets,
  }) {
    return FlTitlesData(
      show: iTituloExibir,
      topTitles: AxisTitles(
        axisNameWidget: Text(
          sTituloNome,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        axisNameSize: 40,
        sideTitles: SideTitles(showTitles: (iTituloCimaBaixo == 1)),
      ),
      bottomTitles: AxisTitles(
        sideTitles: bottomTitleWidgets != null
            ? SideTitles(
                showTitles: true,
                reservedSize: iEixoYAltura,
                interval: 1,
                getTitlesWidget: bottomTitleWidgets,
              )
            : SideTitles(showTitles: (iTituloCimaBaixo == 2)),
      ),
      leftTitles: AxisTitles(
        sideTitles: leftTitleWidgets != null
            ? SideTitles(
                showTitles: true,
                getTitlesWidget: leftTitleWidgets,
                reservedSize: 50,
              )
            : const SideTitles(showTitles: false),
      ),
      rightTitles: AxisTitles(
        sideTitles: leftTitleWidgets != null
            ? SideTitles(
                showTitles: true,
                getTitlesWidget: leftTitleWidgets,
                reservedSize: 50,
              )
            : const SideTitles(showTitles: false),
      ),
    );
  }

 static Future<Future<int?>> dialogMultiploOkCancelarInt(
    BuildContext context, 
    List<String> opcoes, {
    String okLabel = "Confirmar",
    String cancelLabel = "Cancelar",
}) async {
  return showDialog<int>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Selecionar o gráfico'),
        content: SingleChildScrollView(
          child: ListBody(
            children: opcoes.map((String opcao) {
              return ListTile(
                title: Text(opcao),
                onTap: () {
                  Navigator.of(context).pop(opcoes.indexOf(opcao));
                },
              );
            }).toList(),
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(cancelLabel),
            onPressed: () {
              Navigator.of(context).pop(-1); // Retorna -1 se o usuário cancelar
            },
          ),
          TextButton(
            child: Text(okLabel),
            onPressed: () {
              // Você pode adicionar lógica adicional se necessário
              // Aqui retornamos -1 como padrão, isso pode ser substituído conforme sua lógica
              Navigator.of(context).pop(); 
            },
          ),
        ],
      );
    },
  );
}
}
