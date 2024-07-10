// ignore_for_file: file_names

import 'dart:convert';

// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
import 'package:fl_chart_test/funcoes/fJson.dart';
import 'package:json_annotation/json_annotation.dart';

part 'TiposDeGrafico.g.dart';

@JsonSerializable(explicitToJson: true)
class GraficoTipoLinha {
  // List<FlSpot> listaCoordenadas;
  // List<Colors> lineColors;
  int iEscalaX; // minX  maxX
  int iEscalaY; // minY  maxY
  String sSubtipoGrafico;
  bool bIsCurved; // isCurved
  bool bIsStepped; // isStepLineChart
  bool bMostarGrid;
  bool bPreencherArea; // belowAreaData, BarAreaData.show
  // Color corArea; // BarAreaData.color
  int iEspessuraLinha; // barWidth
  // Color corGBY1;
  // Color corGBY2;
  // Color corGBY3;
  // Color corGBY4;
  bool bMostrarTitulos; // FlTitlesData.show
  int iPosicaoTitulos;
  String sPosicaoLegenda;
  bool bMostrarBorda; // FlBorderData.show
  // Color backgroundCor; // backgroundColor
  bool bMostrarSombraLinha; // shadow
  // Color corSombra;

  GraficoTipoLinha({
    required this.iEscalaX,
    required this.iEscalaY,
    // required this.listaCoordenadas,
    required this.sSubtipoGrafico,
    required this.bIsCurved,
    required this.bIsStepped,
    required this.bMostarGrid,
    required this.bPreencherArea,
    // required this.corArea,
    required this.iEspessuraLinha,
    // required this.corGBY1,
    // required this.corGBY2,
    // required this.corGBY3,
    // required this.corGBY4,
    // required this.lineColors,
    required this.bMostrarTitulos,
    required this.iPosicaoTitulos,
    required this.sPosicaoLegenda,
    required this.bMostrarBorda,
    // required this.backgroundCor,
    required this.bMostrarSombraLinha,
    // required this.corSombra,
  });

  GraficoTipoLinha copyWith({
    // List<FlSpot>? listaCoordenadas,
    // List<Colors>? lineColors,
    int? iEscalaX,
    int? iEscalaY,
    String? sSubtipoGrafico,
    bool? bIsCurved,
    bool? bIsStepped,
    bool? bMostarGrid,
    bool? bPreencherArea,
    // Color? corArea,
    int? iEspessuraLinha,
    // Color? corGBY1,
    // Color? corGBY2,
    // Color? corGBY3,
    // Color? corGBY4,
    bool? bMostrarTitulos,
    int? iPosicaoTitulos,
    String? sPosicaoLegenda,
    bool? bMostrarBorda,
    // Color? backgroundCor,
    bool? bMostrarSombraLinha,
    // Color? corSombra,
  }) {
    return GraficoTipoLinha(
      // listaCoordenadas: listaCoordenadas ?? this.listaCoordenadas,
      // lineColors: lineColors ?? this.lineColors,
      iEscalaX: iEscalaX ?? this.iEscalaX,
      iEscalaY: iEscalaY ?? this.iEscalaY,
      sSubtipoGrafico: sSubtipoGrafico ?? this.sSubtipoGrafico,
      bIsCurved: bIsCurved ?? this.bIsCurved,
      bIsStepped: bIsStepped ?? this.bIsStepped,
      bMostarGrid: bMostarGrid ?? this.bMostarGrid,
      bPreencherArea: bPreencherArea ?? this.bPreencherArea,
      // corArea: corArea ?? this.corArea,
      iEspessuraLinha: iEspessuraLinha ?? this.iEspessuraLinha,
      // corGBY1: corGBY1 ?? this.corGBY1,
      // corGBY2: corGBY2 ?? this.corGBY2,
      // corGBY3: corGBY3 ?? this.corGBY3,
      // corGBY4: corGBY4 ?? this.corGBY4,
      bMostrarTitulos: bMostrarTitulos ?? this.bMostrarTitulos,
      iPosicaoTitulos: iPosicaoTitulos ?? this.iPosicaoTitulos,
      sPosicaoLegenda: sPosicaoLegenda ?? this.sPosicaoLegenda,
      bMostrarBorda: bMostrarBorda ?? this.bMostrarBorda,
      // backgroundCor: backgroundCor ?? this.backgroundCor,
      bMostrarSombraLinha: bMostrarSombraLinha ?? this.bMostrarSombraLinha,
      // corSombra: corSombra ?? this.corSombra,
    );
  }

  factory GraficoTipoLinha.fromJson(Map<String, dynamic> json) => _$GraficoTipoLinhaFromJson(json);
  Map<String, dynamic> toJson() => _$GraficoTipoLinhaToJson(this);

  factory GraficoTipoLinha.fromJsonString(String jsonS) => GraficoTipoLinha.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$GraficoTipoLinhaToJson(this), toEncodable: FJson.dataHoraSeralizer);

  static List<GraficoTipoLinha> lGraficoTipoLinhaFromJson(String str) => List<GraficoTipoLinha>.from(jsonDecode(str).map((x) => GraficoTipoLinha.fromJson(x)));
  static List<GraficoTipoLinha> lGraficoTipoLinhaFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => GraficoTipoLinha.fromJson(x)).toList();

  static String lGraficoTipoLinhaToJson(List<GraficoTipoLinha> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}

@JsonSerializable(explicitToJson: true)
class GraficoTipoBarra {
  // List<BarChartGroupData> listaBarras;
  // List<Color> listaBarraCores;
  bool bIsColunas;
  int iEspessuraBarra;
  List<double> listaTamanhoBarras;
  double dEspacoEntreBarras;
  bool bIsEmpilhada;
  bool bMostrarTitulos;
  int iPosicaoTitulos;
  // Color backgroundColor;
  bool bMostarGrid;
  bool bTouchTooltip;
  String tooltipPosition;

  GraficoTipoBarra({
    // required this.listaBarras,
    // required this.listaBarraCores,
    required this.bIsColunas,
    required this.iEspessuraBarra,
    required this.listaTamanhoBarras,
    required this.dEspacoEntreBarras,
    required this.bIsEmpilhada,
    required this.bMostrarTitulos,
    required this.iPosicaoTitulos,
    // required this.backgroundColor,
    required this.bMostarGrid,
    required this.bTouchTooltip,
    required this.tooltipPosition,
  });

  GraficoTipoBarra copyWith({
    // List<BarChartGroupData>? listaBarras,
    // List<Color>? listaBarraCores,
    bool? bIsColunas,
    int? iEspessuraBarra,
    List<double>? listaTamanhoBarras,
    double? dEspacoEntreBarras,
    bool? bIsEmpilhada,
    bool? bMostrarTitulos,
    int? iPosicaoTitulos,
    // Color? backgroundColor,
    bool? bMostarGrid,
    bool? bTouchTooltip,
    String? tooltipPosition,
  }) {
    return GraficoTipoBarra(
      // listaBarras: listaBarras ?? this.listaBarras,
      // listaBarraCores: listaBarraCores ?? this.listaBarraCores,
      bIsColunas: bIsColunas ?? this.bIsColunas,
      iEspessuraBarra: iEspessuraBarra ?? this.iEspessuraBarra,
      listaTamanhoBarras: listaTamanhoBarras ?? this.listaTamanhoBarras,
      dEspacoEntreBarras: dEspacoEntreBarras ?? this.dEspacoEntreBarras,
      bIsEmpilhada: bIsEmpilhada ?? this.bIsEmpilhada,
      bMostrarTitulos: bMostrarTitulos ?? this.bMostrarTitulos,
      iPosicaoTitulos: iPosicaoTitulos ?? this.iPosicaoTitulos,
      // backgroundColor: backgroundColor ?? this.backgroundColor,
      bMostarGrid: bMostarGrid ?? this.bMostarGrid,
      bTouchTooltip: bTouchTooltip ?? this.bTouchTooltip,
      tooltipPosition: tooltipPosition ?? this.tooltipPosition,
    );
  }

  factory GraficoTipoBarra.fromJson(Map<String, dynamic> json) => _$GraficoTipoBarraFromJson(json);
  Map<String, dynamic> toJson() => _$GraficoTipoBarraToJson(this);

  factory GraficoTipoBarra.fromJsonString(String jsonS) => GraficoTipoBarra.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$GraficoTipoBarraToJson(this), toEncodable: FJson.dataHoraSeralizer);

  static List<GraficoTipoBarra> lGraficoTipoBarraFromJson(String str) => List<GraficoTipoBarra>.from(jsonDecode(str).map((x) => GraficoTipoBarra.fromJson(x)));
  static List<GraficoTipoBarra> lGraficoTipoBarraFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => GraficoTipoBarra.fromJson(x)).toList();

  static String lGraficoTipoBarraToJson(List<GraficoTipoBarra> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}

@JsonSerializable(explicitToJson: true)
class GraficoTipoPizza {
  // List<PieChartSectionData> listaDeSecoes;
  String sTituloSecao; // PieChartSectionData, title
  double dPosicaoTituloSecao; // titlePositionPercentageOffset entre 0 e 1
  // List<Color> corDaSecao; // PieChartSectionData, color
  double dEspessuraDaSecao; // PieChartSectionData, value
  // BorderSide contornoSecao; // BorderSide, width, color
  double dEspacoEntreSecoes; // sectionsSpace
  double dRaioSecao; // raioSecao
  double dRaioCentral; // centerSpaceRadius
  // Color corVazioCentral; // centerSpaceColor
  bool bAnimacoes;

  GraficoTipoPizza({
    // required this.listaDeSecoes,
    required this.sTituloSecao,
    required this.dPosicaoTituloSecao,
    // required this.corDaSecao,
    required this.dEspessuraDaSecao,
    // required this.contornoSecao,
    required this.dEspacoEntreSecoes,
    required this.dRaioSecao,
    required this.dRaioCentral,
    // required this.corVazioCentral,
    required this.bAnimacoes,
  });

  GraficoTipoPizza copyWith({
    // List<PieChartSectionData>? listaDeSecoes,
    String? sTituloSecao,
    double? dPosicaoTituloSecao,
    // List<Color>? corDaSecao,
    double? dEspessuraDaSecao,
    // BorderSide? contornoSecao,
    double? dEspacoEntreSecoes,
    double? dRaioSecao,
    double? dRaioCentral,
    // Color? corVazioCentral,
    bool? bAnimacoes,
  }) {
    return GraficoTipoPizza(
      // listaDeSecoes: listaDeSecoes ?? this.listaDeSecoes,
      sTituloSecao: sTituloSecao ?? this.sTituloSecao,
      dPosicaoTituloSecao: dPosicaoTituloSecao ?? this.dPosicaoTituloSecao,
      // corDaSecao: corDaSecao ?? this.corDaSecao,
      dEspessuraDaSecao: dEspessuraDaSecao ?? this.dEspessuraDaSecao,
      // contornoSecao: contornoSecao ?? this.contornoSecao,
      dEspacoEntreSecoes: dEspacoEntreSecoes ?? this.dEspacoEntreSecoes,
      dRaioSecao: dRaioSecao ?? this.dRaioSecao,
      dRaioCentral: dRaioCentral ?? this.dRaioCentral,
      // corVazioCentral: corVazioCentral ?? this.corVazioCentral,
      bAnimacoes: bAnimacoes ?? this.bAnimacoes,
    );
  }

  factory GraficoTipoPizza.fromJson(Map<String, dynamic> json) => _$GraficoTipoPizzaFromJson(json);
  Map<String, dynamic> toJson() => _$GraficoTipoPizzaToJson(this);

  factory GraficoTipoPizza.fromJsonString(String jsonS) => GraficoTipoPizza.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$GraficoTipoPizzaToJson(this), toEncodable: FJson.dataHoraSeralizer);

  static List<GraficoTipoPizza> lGraficoTipoPizzaFromJson(String str) => List<GraficoTipoPizza>.from(jsonDecode(str).map((x) => GraficoTipoPizza.fromJson(x)));
  static List<GraficoTipoPizza> lGraficoTipoPizzaFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => GraficoTipoPizza.fromJson(x)).toList();

  static String lGraficoTipoPizzaToJson(List<GraficoTipoPizza> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}

@JsonSerializable(explicitToJson: true)
class GraficoTipoDispersao {
  int iEscalaX;
  int iEscalaY;
  // List<ScatterSpot> listaPontosDispersos;
  double dRaioDosPontos;
  // List<Color> corDosPontos;
  String sTitulo;
  String iPosicaoTitulos;
  bool bTouchData;
  bool bTooltip;
  bool bMostarGrid;
  // Color corDeFundo;

  GraficoTipoDispersao({
    required this.iEscalaX,
    required this.iEscalaY,
    // required this.listaPontosDispersos,
    required this.dRaioDosPontos,
    // required this.corDosPontos,
    required this.sTitulo,
    required this.iPosicaoTitulos,
    required this.bTouchData,
    required this.bTooltip,
    required this.bMostarGrid,
    // required this.corDeFundo,
  });

  GraficoTipoDispersao copyWith({
    int? iEscalaX,
    int? iEscalaY,
    // List<ScatterSpot>? listaPontosDispersos,
    double? dRaioDosPontos,
    // List<Color>? corDosPontos,
    String? sTitulo,
    String? iPosicaoTitulos,
    bool? bTouchData,
    bool? bTooltip,
    bool? bMostarGrid,
    // Color? corDeFundo,
  }) {
    return GraficoTipoDispersao(
      iEscalaX: iEscalaX ?? this.iEscalaX,
      iEscalaY: iEscalaY ?? this.iEscalaY,
      // listaPontosDispersos: listaPontosDispersos ?? this.listaPontosDispersos,
      dRaioDosPontos: dRaioDosPontos ?? this.dRaioDosPontos,
      // corDosPontos: corDosPontos ?? this.corDosPontos,
      sTitulo: sTitulo ?? this.sTitulo,
      iPosicaoTitulos: iPosicaoTitulos ?? this.iPosicaoTitulos,
      bTouchData: bTouchData ?? this.bTouchData,
      bTooltip: bTooltip ?? this.bTooltip,
      bMostarGrid: bMostarGrid ?? this.bMostarGrid,
      // corDeFundo: corDeFundo ?? this.corDeFundo,
    );
  }

  factory GraficoTipoDispersao.fromJson(Map<String, dynamic> json) => _$GraficoTipoDispersaoFromJson(json);
  Map<String, dynamic> toJson() => _$GraficoTipoDispersaoToJson(this);

  factory GraficoTipoDispersao.fromJsonString(String jsonS) => GraficoTipoDispersao.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$GraficoTipoDispersaoToJson(this), toEncodable: FJson.dataHoraSeralizer);

  static List<GraficoTipoDispersao> lGraficoTipoDispersaoFromJson(String str) => List<GraficoTipoDispersao>.from(jsonDecode(str).map((x) => GraficoTipoDispersao.fromJson(x)));
  static List<GraficoTipoDispersao> lGraficoTipoDispersaoFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => GraficoTipoDispersao.fromJson(x)).toList();

  static String lGraficoTipoDispersaoToJson(List<GraficoTipoDispersao> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}

@JsonSerializable(explicitToJson: true)
class GraficoTipoRadar {
  // List<RadarDataSet> listaDeSets;
  List<int> listaPontosDoSet;
  String sTitulo;
  int iPosicaoTitulos;
  // Color corTitulo;
  double distanciaTituloBordaRadar;
  // TextStyle estiloTitulo;
  // Color backgroundCor;
  bool formatoCircular;
  double espessuraBorda;
  // Color corBorda;
  int quantidadeDeTicks;
  // Color corDescricaoTicks;
  double tamanhoDescricaoTicks;
  // Color corGrade;

  GraficoTipoRadar({
    // required this.listaDeSets,
    required this.listaPontosDoSet,
    required this.sTitulo,
    required this.iPosicaoTitulos,
    // required this.corTitulo,
    required this.distanciaTituloBordaRadar,
    // required this.estiloTitulo,
    // required this.backgroundCor,
    required this.formatoCircular,
    required this.espessuraBorda,
    // required this.corBorda,
    required this.quantidadeDeTicks,
    // required this.corDescricaoTicks,
    required this.tamanhoDescricaoTicks,
    // required this.corGrade,
  });

  GraficoTipoRadar copyWith({
    // List<RadarDataSet>? listaDeSets,
    List<int>? listaPontosDoSet,
    String? sTitulo,
    int? iPosicaoTitulos,
    // Color? corTitulo,
    double? distanciaTituloBordaRadar,
    // TextStyle? estiloTitulo,
    // Color? backgroundCor,
    bool? formatoCircular,
    double? espessuraBorda,
    // Color? corBorda,
    int? quantidadeDeTicks,
    // Color? corDescricaoTicks,
    double? tamanhoDescricaoTicks,
    // Color? corGrade,
  }) {
    return GraficoTipoRadar(
      // listaDeSets: listaDeSets ?? this.listaDeSets,
      listaPontosDoSet: listaPontosDoSet ?? this.listaPontosDoSet,
      sTitulo: sTitulo ?? this.sTitulo,
      iPosicaoTitulos: iPosicaoTitulos ?? this.iPosicaoTitulos,
      // corTitulo: corTitulo ?? this.corTitulo,
      distanciaTituloBordaRadar: distanciaTituloBordaRadar ?? this.distanciaTituloBordaRadar,
      // estiloTitulo: estiloTitulo ?? this.estiloTitulo,
      // backgroundCor: backgroundCor ?? this.backgroundCor,
      formatoCircular: formatoCircular ?? this.formatoCircular,
      espessuraBorda: espessuraBorda ?? this.espessuraBorda,
      // corBorda: corBorda ?? this.corBorda,
      quantidadeDeTicks: quantidadeDeTicks ?? this.quantidadeDeTicks,
      // corDescricaoTicks: corDescricaoTicks ?? this.corDescricaoTicks,
      tamanhoDescricaoTicks: tamanhoDescricaoTicks ?? this.tamanhoDescricaoTicks,
      // corGrade: corGrade ?? this.corGrade,
    );
  }

  factory GraficoTipoRadar.fromJson(Map<String, dynamic> json) => _$GraficoTipoRadarFromJson(json);
  Map<String, dynamic> toJson() => _$GraficoTipoRadarToJson(this);

  factory GraficoTipoRadar.fromJsonString(String jsonS) => GraficoTipoRadar.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$GraficoTipoRadarToJson(this), toEncodable: FJson.dataHoraSeralizer);

  static List<GraficoTipoRadar> lGraficoTipoRadarFromJson(String str) => List<GraficoTipoRadar>.from(jsonDecode(str).map((x) => GraficoTipoRadar.fromJson(x)));
  static List<GraficoTipoRadar> lGraficoTipoRadarFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => GraficoTipoRadar.fromJson(x)).toList();

  static String lGraficoTipoRadarToJson(List<GraficoTipoRadar> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}
