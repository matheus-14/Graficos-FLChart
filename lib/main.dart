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
  late int _selectedChartIndex;
  bool showGrid = true;

  @override
  void initState() {
    super.initState();
    _selectedChartIndex = 0; // Começar com o gráfico de linha
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
              children: options.asMap().entries.map((entry) {
                int index = entry.key;
                String optionText = entry.value;
                return _buildOption(context, optionText, index, onTapCallback);
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  Widget _buildOption(BuildContext context, String optionText, int index, Function(int) onTapCallback) {
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
        _selectedChartIndex = index;
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
        //_selectedCampotIndex = index;
      });
    });
  }

  Widget _buildChart() {
    List<FlSpot> pontos = const [
      FlSpot(0, 5),
      FlSpot(1, 3),
      FlSpot(2, 7),
      FlSpot(3, 1.5),
      FlSpot(4, 5.5),
      FlSpot(5, 7.5),
    ];

    List<BarChartGroupData>? barrasColunas = [
      BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 5, color: Colors.amber, width: 20)]),
      BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 3, color: Colors.blue, width: 20)]),
      BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 7, color: Colors.green, width: 20)]),
      BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 2, color: Colors.pink, width: 20)]),
      BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 6, color: Colors.orange, width: 20)]),
    ];
    // List<PieChartSectionData>? pizzaRosca = [];

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

    switch (_selectedChartIndex) {
      case 0: //  Linhas
        return LineChart(
          LineChartData(
            minX: 0,
            minY: 0,
            maxY: 8,
            gridData: gridData,
            lineBarsData: [
              LineChartBarData(
                show: true,
                spots: pontos,
                gradient: cores,
                barWidth: 4,
                isCurved: false,
                curveSmoothness: 0.35,
                isStrokeCapRound: true,
                // aboveBarData: BarAreaData(
                //   show: true,
                //   color: Colors.red.withOpacity(0.2),
                // ),
                // belowBarData: BarAreaData(
                //   show: true,
                //   color: Colors.blue.withOpacity(0.3),
                // ),
                shadow: const Shadow(
                  color: Colors.greenAccent,
                  blurRadius: 4,
                ),
              ),
            ],
          ),
        );
      case 2: // Area
        return LineChart(
          LineChartData(
            minX: 0,
            minY: 0,
            gridData: gridData,
            maxY: 8,
            lineBarsData: [
              LineChartBarData(
                show: true,
                spots: pontos,
                gradient: cores,
                barWidth: 4,
                isCurved: false,
                curveSmoothness: 0.35,
                isStrokeCapRound: true,
                // aboveBarData: BarAreaData(
                //   show: true,
                //   color: Colors.red.withOpacity(0.2),
                // ),
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
          minX: 0,
          minY: 0,
          maxY: 8,
          gridData: gridData,
          lineBarsData: [
            LineChartBarData(
              show: true,
              spots: pontos,
              gradient: cores,
              barWidth: 4,
              isCurved: true,
              curveSmoothness: 0.35,
              isStrokeCapRound: true,
              // aboveBarData: BarAreaData(
              //   show: true,
              //   color: Colors.red.withOpacity(0.2),
              // ),
              belowBarData: BarAreaData(
                show: true,
                color: Colors.blue.withOpacity(0.3),
              ),
            ),
          ],
        ));
      case 4: // Area em bloco
        return LineChart(LineChartData(
          minX: 0,
          minY: 0,
          maxY: 8,
          gridData: gridData,
          lineBarsData: [
            LineChartBarData(
              show: true,
              spots: pontos,
              gradient: cores,
              barWidth: 4,
              isCurved: true,
              curveSmoothness: 0.35,
              isStrokeCapRound: true,
              isStepLineChart: true,
              // aboveBarData: BarAreaData(
              //   show: true,
              //   color: Colors.red.withOpacity(0.2),
              // ),
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
            maxY: 8,
            gridData: gridData,
            barGroups: barrasColunas,
          ),
        );
      case 10: // Barras
        return BarChart(
          BarChartData(
            gridData: gridData,
            barGroups: barrasColunas,
          ),
        );
      case 13: // Linhas Curvas
        return LineChart(
          LineChartData(
            minX: 0,
            minY: 0,
            maxY: 8,
            gridData: gridData,
            lineBarsData: [
              LineChartBarData(
                show: true,
                spots: pontos,
                gradient: cores,
                barWidth: 4,
                isCurved: true,
                curveSmoothness: 0.35,
                isStrokeCapRound: true,
                // aboveBarData: BarAreaData(
                //   show: true,
                //   color: Colors.red.withOpacity(0.2),
                // ),
                // belowBarData: BarAreaData(
                //   show: true,
                //   color: Colors.blue.withOpacity(0.3),
                // ),
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
          minY: 0,
          maxY: 8,
          gridData: gridData,
          lineBarsData: [
            LineChartBarData(
              show: true,
              spots: pontos,
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Graficos - Exemplos"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[200],
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildChart(),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue[100],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Gráficos',
          ),
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
          if (index == 0) {
            _showChartOptions(context);
          } else if ([1, 2, 3].contains(index)) {
            _showCampoOptions(context);
          } else if (index == 4) {
            setState(() {
              showGrid = !showGrid;
            });
          }
        },
      ),
    );
  }
}
