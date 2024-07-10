// import 'dart:math';

// import 'package:fl_chart_test/CoresAuxiliaresGraficos.dart';
import 'package:fl_chart_test/graficoExpandido.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'construirGraficos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Retornar"),
                ),
                const SizedBox(height: 10),
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
      "Barras",
      "Pizza",
      "Dispersão",
      "Radar"
    ];
    // List<String> chartOptions = [
    //   "Linhas",
    //   "Linhas rápidas",
    //   "Área",
    //   "Área curva",
    //   "Área em bloco",
    //   "Área empilhada",
    //   "Área empilhada em 100%",
    //   "Colunas",
    //   "Colunas empilhadas",
    //   "Colunas empilhadas em 100%",
    //   "Barras",
    //   "Barras empilhadas",
    //   "Barras empilhadas em 100%",
    //   "Linhas curvas",
    //   "Linhas em bloco",
    //   "Pizza",
    //   "Rosca",
    //   "Dispersão",
    //   "Radar"
    // ];

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

  Widget buildChart(int iIndex) {
    List<FlSpot> listaPontos = const [
      FlSpot(0, 5),
      FlSpot(1, 3),
      FlSpot(2, 7),
      FlSpot(3, 1.5),
      FlSpot(4, 5.5),
      FlSpot(5, 3.5),
    ];
    /*
  periodos	periodoi	year(dam_cc1)	month(dam_cc1)	vcre	vdeb
	01/2022	2022/01	2022	1	1756214.77000000	2102036.43000000
	02/2022	2022/02	2022	2	2172594.74000000	2097763.44000000
	03/2022	2022/03	2022	3	2337010.86000000	2008713.00000000
	04/2022	2022/04	2022	4	619953.97000000	577899.39000000
	05/2022	2022/05	2022	5	447.30000000	0.00000000
   */

    FlGridData gridData = FlGridData(
      show: showGrid,
    );

    return ConstruirGraficos().controllerGrafico(iIndex, listaPontos, gridData);
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
              int iIndex = entry.key;
              int iChartIndex = entry.value;
              return GestureDetector(
                onDoubleTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => GraficoExpandido(iChartIndex)));
                  // _showExpandedChart(context, );
                },
                child: Stack(children: [
                  SizedBox(
                    width: dGraficoLargura,
                    height: dGraficoAltura,
                    child: buildChart(iChartIndex),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                      icon: const Icon(Icons.remove_circle, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          _selectedes.removeAt(iIndex);
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
