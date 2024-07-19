import 'package:fl_chart_test/fPaineisResultadosUI/paginaInicialGraficos.dart';
import 'package:flutter/material.dart';

// Importar a classe PaginaInicialGraficos

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.light, // ThemeMode.light, ThemeMode.dark, ThemeMode.system
      home: const PaginaInicialGraficos(),
    );
  }
}
