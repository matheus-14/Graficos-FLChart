// import 'dart:math';

import 'package:fl_chart_test/graficoExpandido.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<int> _selectedes = [];
  bool showGrid = true;

  @override
  void initState() {
    super.initState();
  }

  void _showOptionsDialog(BuildContext context, String title, List<String> options, Function(int) onTapCallback) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...options.asMap().entries.map((entry) {
                  int index = entry.key;
                  String optionText = entry.value;
                  return buildOption(context, optionText, index, onTapCallback);
                }),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Retornar"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildOption(BuildContext context, String optionText, int index, Function(int) onTapCallback) {
    return ListTile(
      title: Text(optionText),
      onTap: () {
        onTapCallback(index);
        Navigator.pop(context);
      },
    );
  }

  void _showChartOptions(BuildContext context) {
    List<String> chartOptions = [
      "Linhas",
      "Linhas rápidas",
      "Área",
      "Área curva",
      "Área em bloco",
      "Área empilhada",
      "Área empilhada em 100%",
      "Colunas",
      "Colunas empilhadas",
      "Colunas empilhadas em 100%",
      "Barras",
      "Barras empilhadas",
      "Barras empilhadas em 100%",
      "Linhas curvas",
      "Linhas em bloco",
      "Pizza",
      "Rosca"
    ];

    _showOptionsDialog(context, "Opções de Gráficos", chartOptions, (int index) {
      setState(() {
        if (_selectedes.length < 9) {
          _selectedes.add(index);
        }
      });
    });
  }

  void _showCampoOptions(BuildContext context) {
    List<String> campoOptions = [
      "Nenhum",
      "Quantidade",
      "Valor",
      "Custo",
      "Descontos \$",
      "Descontos %",
      "Rentabilidade \$",
    ];

    _showOptionsDialog(context, "Ordenar por", campoOptions, (int index) {
      setState(() {
        //_selectedCampotIndex = index;   // tratar ordernar por campo1 campo2 e campo3
      });
    });
  }

  // void _showExpandedChart(BuildContext context, int) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Dialog(
  //         child: Container(
  //           width: MediaQuery.of(context).size.width,
  //           height: MediaQuery.of(context).size.height,
  //           padding: const EdgeInsets.all(16.0),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.end,
  //                 children: [
  //                   IconButton(
  //                     icon: const Icon(Icons.close),
  //                     onPressed: () {
  //                       Navigator.of(context).pop();
  //                     },
  //                   ),
  //                 ],
  //               ),
  //               const Text(
  //                 'Gráfico Ampliado',
  //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  //               ),
  //               const SizedBox(height: 20),
  //               Expanded(
  //                 child: Center(
  //                   child: _buildChart(), // Mostra o gráfico ampliado
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  Widget buildChart(int index) {
    List<FlSpot> listaPontos = const [
      FlSpot(0, 5),
      FlSpot(1, 3),
      FlSpot(2, 7),
      FlSpot(3, 1.5),
      FlSpot(4, 5.5),
      FlSpot(5, 17.5),
    ];

    List<BarChartGroupData>? barrasColunas = [
      BarChartGroupData(x: 0, barRods: [
        BarChartRodData(
          toY: 5,
          color: Colors.amber,
          width: 20,
        )
      ]),
      BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 3, color: Colors.blue, width: 20)]),
      BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 7, color: Colors.green, width: 20)]),
      BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 2, color: Colors.pink, width: 20)]),
      BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 6, color: Colors.orange, width: 20)]),
    ];

    Gradient? cores = const LinearGradient(
      colors: [
        Color.fromARGB(255, 70, 167, 247),
        Color.fromARGB(255, 230, 79, 68),
        Colors.purple,
      ],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );

    FlGridData gridData = FlGridData(
      show: showGrid,
    );

    switch (index) {
      case 0: //  Linhas
        return LineChart(
          LineChartData(
            // minX: 0,
            // maxY: 8,
            // minY: 0,
            gridData: gridData,
            lineBarsData: [
              LineChartBarData(
                show: true,
                spots: listaPontos,
                gradient: cores,
                barWidth: 4,
                isCurved: false,
                curveSmoothness: 0.35,
                isStrokeCapRound: true,
              ),
            ],
          ),
        );
      case 2: // Area
        return LineChart(
          LineChartData(
            // minX: 0,
            // minY: 0,
            // maxY: 8,
            gridData: gridData,
            lineBarsData: [
              LineChartBarData(
                show: true,
                spots: listaPontos,
                gradient: cores,
                barWidth: 4,
                isCurved: false,
                curveSmoothness: 0.35,
                isStrokeCapRound: true,
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.blue.withOpacity(0.3),
                ),
                shadow: const Shadow(
                  color: Colors.greenAccent,
                  blurRadius: 4,
                ),
              ),
            ],
          ),
        );
      case 3: // Area Curva
        return LineChart(LineChartData(
          // minX: 0,
          // minY: 0,
          // maxY: 8,
          gridData: gridData,
          lineBarsData: [
            LineChartBarData(
              show: true,
              spots: listaPontos,
              gradient: cores,
              barWidth: 4,
              isCurved: true,
              curveSmoothness: 0.35,
              isStrokeCapRound: true,
              belowBarData: BarAreaData(
                show: true,
                color: Colors.blue.withOpacity(0.3),
              ),
            ),
          ],
        ));
      case 4: // Area em bloco
        return LineChart(LineChartData(
          // minX: 0,
          // minY: 0,
          // maxY: 8,
          gridData: gridData,
          lineBarsData: [
            LineChartBarData(
              show: true,
              spots: listaPontos,
              gradient: cores,
              barWidth: 4,
              isCurved: true,
              curveSmoothness: 0.35,
              isStrokeCapRound: true,
              isStepLineChart: true,
              belowBarData: BarAreaData(
                show: true,
                color: Colors.blue.withOpacity(0.3),
              ),
            ),
          ],
        ));
      case 7: // Colunas
        return BarChart(
          BarChartData(
            // maxY: 8,
            gridData: gridData,
            barGroups: barrasColunas,
          ),
        );
      case 8: // Colunas empilhadas
        return BarChart(BarChartData(
          alignment: BarChartAlignment.center,
          barTouchData: BarTouchData(
            enabled: false,
          ),
          titlesData: const FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          gridData: gridData,
          borderData: FlBorderData(
            show: false,
          ),
        ));
      case 10: // Barras
        return RotatedBox(
          quarterTurns: 1,
          child: BarChart(
            BarChartData(
              gridData: gridData,
              barGroups: barrasColunas,
            ),
          ),
        );
      case 13: // Linhas Curvas
        return LineChart(
          LineChartData(
            // minX: 0,
            // minY: 0,
            // maxY: 8,
            gridData: gridData,
            lineBarsData: [
              LineChartBarData(
                show: true,
                spots: listaPontos,
                gradient: cores,
                barWidth: 4,
                isCurved: true,
                curveSmoothness: 0.35,
                isStrokeCapRound: true,
                shadow: const Shadow(
                  color: Colors.greenAccent,
                  blurRadius: 4,
                ),
              ),
            ],
          ),
        );
      case 14: // Linhas em Bloco
        return LineChart(LineChartData(
          // minY: 0,
          // maxY: 8,
          gridData: gridData,
          lineBarsData: [
            LineChartBarData(
              show: true,
              spots: listaPontos,
              gradient: cores,
              barWidth: 4,
              isCurved: true,
              curveSmoothness: 0.35,
              isStrokeCapRound: true,
              isStepLineChart: true,
            ),
          ],
        ));
      case 15: // Pizza
        return PieChart(
          PieChartData(
            sections: [
              PieChartSectionData(value: 10, color: Colors.amber, radius: 250),
              PieChartSectionData(value: 20, color: Colors.blue, radius: 250),
              PieChartSectionData(value: 30, color: Colors.green, radius: 250),
              PieChartSectionData(value: 40, color: Colors.pink, radius: 250),
            ],
            centerSpaceRadius: 0,
          ),
        );
      case 16: // Rosca
        return PieChart(
          PieChartData(
            sections: [
              PieChartSectionData(value: 10, color: Colors.amber, radius: 70),
              PieChartSectionData(value: 20, color: Colors.blue, radius: 70),
              PieChartSectionData(value: 30, color: Colors.green, radius: 70),
              PieChartSectionData(value: 40, color: Colors.pink, radius: 70),
            ],
            centerSpaceRadius: 150,
            centerSpaceColor: Colors.black12,
          ),
        );
      default:
        return Container(); // retorna um container vazio
    }
  }

  @override
  Widget build(BuildContext context) {
    double dBarrasHV = 150;
    double dWrapEspacamento = 10;
    double dScreenWidth = MediaQuery.of(context).size.width;
    double dScreenHeight = MediaQuery.of(context).size.height;
    int iQuantidadeDeGraficos = _selectedes.length;

    int iGraficosPorLinha, iGraficosPorColuna;
    double dGraficoLargura;
    double dGraficoAltura = dScreenHeight / 1.0;

    // Definindo a quantidade de gráficos por linha baseado na largura da tela
    if (dScreenWidth > 1300) {
      iGraficosPorLinha = 3;
    } else if (dScreenWidth > 800) {
      iGraficosPorLinha = 2;
    } else {
      iGraficosPorLinha = 1;
    }

    if (dScreenHeight > 1300) {
      iGraficosPorColuna = 3;
    } else if (dScreenHeight > 800) {
      iGraficosPorColuna = 2;
    } else {
      iGraficosPorColuna = 1;
    }

    if (iQuantidadeDeGraficos <= iGraficosPorLinha) {
      iGraficosPorLinha = iQuantidadeDeGraficos;
      if (iQuantidadeDeGraficos < iGraficosPorColuna * iGraficosPorLinha) {
        iGraficosPorColuna -= 1;
      }
    }
    if (iQuantidadeDeGraficos <= iGraficosPorColuna) {
      iGraficosPorColuna = 1;
    }
    if (iQuantidadeDeGraficos < iGraficosPorColuna * iGraficosPorLinha) {
      iGraficosPorLinha -= 1;
    }

    dGraficoLargura = (dScreenWidth - (iGraficosPorLinha * dWrapEspacamento)) / iGraficosPorLinha;
    dGraficoAltura = (dScreenHeight - (dBarrasHV + iGraficosPorColuna * dWrapEspacamento)) / iGraficosPorColuna;

    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Graficos - Exemplos"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[200],
          // leading: IconButton(
          //   tooltip: "Fecha a janela",
          //   icon: Icon(Icons.arrow_back_rounded, color: FCoresBasicas().branco),
          //   onPressed: () {
          //     if (FConfig().bJanelaTravar) {
          //       FConfig().bJanelaTravar = false;
          //       return;
          //     }
          //     FNavigator().pop();
          //   },
          // ),
          actions: [
            // Visibility(
            //   visible: FConfig().contarPaginas() > 3,
            //   child: IconButton(
            //       tooltip: "Retorna para uma janela anterior específica",
            //       icon: Icon(Icons.arrow_circle_left_outlined, color: FCoresBasicas().branco),
            //       onPressed: () {
            //         if (FConfig().bJanelaTravar) {
            //           return;
            //         }
            //         FConfig().removerVariasPaginas();
            //       }),
            // ),
            Visibility(
              visible: true,
              child: IconButton(
                  tooltip: "Adiciona um novo painel",
                  // icon: Icon(Icons.add_rounded, color: FCoresBasicas().branco),
                  icon: const Icon(Icons.add_rounded, color: Colors.black),
                  onPressed: () async {
                    // if (FConfig().bJanelaTravar) {
                    //   return;
                    // }
                    // FConfig().bJanelaTravar = true;

                    _showChartOptions(context);

                    // FConfig().bJanelaTravar = false;
                  }),
            ),
            // Tooltip(
            //   message: "Exibe o menu de opções individuais",
            //   child: InkWell(
            //     customBorder: const CircleBorder(),
            //     onTapDown: (details) => tapPosition = FFields().getTapPosition(details),
            //     onTap: () async {
            //       if (FConfig().bJanelaTravar) {
            //         return;
            //       }
            //     },
            //     child: Padding(
            //       padding: edgeIAll5,
            //       child: Icon(Icons.more_vert_rounded, color: FCoresBasicas().branco),
            //     ),
            //   ),
            // ),
          ],
        ),
        body: SingleChildScrollView(
          child: Wrap(
            spacing: dWrapEspacamento,
            alignment: WrapAlignment.center,
            children: _selectedes.asMap().entries.map((entry) {
              int index = entry.key;
              int chartIndex = entry.value;
              return GestureDetector(
                onDoubleTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => GraficoExpandido(chartIndex)));
                  // _showExpandedChart(context, );
                },
                child: Stack(children: [
                  SizedBox(
                    width: dGraficoLargura,
                    height: dGraficoAltura,
                    child: buildChart(chartIndex),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                      icon: const Icon(Icons.remove_circle, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          _selectedes.removeAt(index);
                        });
                      },
                    ),
                  ),
                ]),
              );
            }).toList(),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightBlue[100],
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Campo 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Campo 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Campo 3',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_on_sharp),
              label: 'Grade',
            ),
          ],
          onTap: (index) {
            if ([0, 1, 2].contains(index)) {
              _showCampoOptions(context);
            } else if (index == 3) {
              setState(() {
                showGrid = !showGrid;
              });
            }
          },
        ),
      ),
    );
  }
}
