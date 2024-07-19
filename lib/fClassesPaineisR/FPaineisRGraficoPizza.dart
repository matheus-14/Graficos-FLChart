// ignore_for_file: file_names

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:fl_chart_test/funcoes/fJson.dart';

part 'FPaineisRGraficoPizza.g.dart';

@JsonSerializable(explicitToJson: true)
class FPaineisRGraficoPizza {
  List<int>? listaValores;
  int? iTipoPizza; // (1)Pizza, (2)Rosca

  String? sTituloNome;
  int? oTituloCor;
  int? iTituloExibir; // Sim, Não
  int? iTituloCimaBaixo; // Em cima, Embaixo

  List<String>? listaIndicadoresTexto;
  List<int>? listaIndicadoresCor;
  int? iTamanhoIndicadorNormal;
  int? iTamanhoIndicadorExpandido;
  int? corTextoIndicadorNormal;
  int? corTextoIndicadorExpandido;
  List<String>? listaTituloSecao; // PieChartSectionData, title
  double? dPosicaoTituloSecao; // titlePositionPercentageOffset entre 0 e 1
  List<int>? corDaSecao; // PieChartSectionData, color
  double? dEspessuraDaSecao; // PieChartSectionData, value
  int? iContornoSecaoEspessura;
  int? iContornoSecaoCor;
  double? dEspacoEntreSecoes; // sectionsSpace
  double? dRaioSecao; // raioSecao
  double? dRaioCentral; // centerSpaceRadius
  int? iCorVazioCentral; // centerSpaceColor

  FPaineisRGraficoPizza({
    this.listaValores,
    this.iTipoPizza,
    this.sTituloNome,
    this.oTituloCor,
    this.iTituloExibir,
    this.iTituloCimaBaixo,
    this.listaIndicadoresTexto,
    this.listaIndicadoresCor,
    this.iTamanhoIndicadorNormal,
    this.iTamanhoIndicadorExpandido,
    this.corTextoIndicadorNormal,
    this.corTextoIndicadorExpandido,
    this.listaTituloSecao,
    this.dPosicaoTituloSecao,
    this.corDaSecao,
    this.dEspessuraDaSecao,
    this.iContornoSecaoEspessura,
    this.iContornoSecaoCor,
    this.dEspacoEntreSecoes,
    this.dRaioSecao,
    this.dRaioCentral,
    this.iCorVazioCentral,
  });

  FPaineisRGraficoPizza copyWith({
    List<int>? listaValores,
    int? iTipoPizza,
    String? sTituloNome,
    int? oTituloCor,
    int? iTituloExibir,
    int? iTituloCimaBaixo,
    List<String>? listaIndicadoresTexto,
    List<int>? listaIndicadoresCor,
    int? iTamanhoIndicadorNormal,
    int? iTamanhoIndicadorExpandido,
    int? corTextoIndicadorNormal,
    int? corTextoIndicadorExpandido,
    List<String>? listaTituloSecao,
    double? dPosicaoTituloSecao,
    List<int>? corDaSecao,
    double? dEspessuraDaSecao,
    int? iContornoSecaoEspessura,
    int? iContornoSecaoCor,
    double? dEspacoEntreSecoes,
    double? dRaioSecao,
    double? dRaioCentral,
    int? iCorVazioCentral,
  }) {
    return FPaineisRGraficoPizza(
      listaValores: listaValores ?? this.listaValores,
      iTipoPizza: iTipoPizza ?? this.iTipoPizza,
      sTituloNome: sTituloNome ?? this.sTituloNome,
      oTituloCor: oTituloCor ?? this.oTituloCor,
      iTituloExibir: iTituloExibir ?? this.iTituloExibir,
      iTituloCimaBaixo: iTituloCimaBaixo ?? this.iTituloCimaBaixo,
      listaIndicadoresTexto: listaIndicadoresTexto ?? this.listaIndicadoresTexto,
      listaIndicadoresCor: listaIndicadoresCor ?? this.listaIndicadoresCor,
      iTamanhoIndicadorNormal: iTamanhoIndicadorNormal ?? this.iTamanhoIndicadorNormal,
      iTamanhoIndicadorExpandido: iTamanhoIndicadorExpandido ?? this.iTamanhoIndicadorExpandido,
      corTextoIndicadorNormal: corTextoIndicadorNormal ?? this.corTextoIndicadorNormal,
      corTextoIndicadorExpandido: corTextoIndicadorExpandido ?? this.corTextoIndicadorExpandido,
      listaTituloSecao: listaTituloSecao ?? this.listaTituloSecao,
      dPosicaoTituloSecao: dPosicaoTituloSecao ?? this.dPosicaoTituloSecao,
      corDaSecao: corDaSecao ?? this.corDaSecao,
      dEspessuraDaSecao: dEspessuraDaSecao ?? this.dEspessuraDaSecao,
      iContornoSecaoEspessura: iContornoSecaoEspessura ?? this.iContornoSecaoEspessura,
      iContornoSecaoCor: iContornoSecaoCor ?? this.iContornoSecaoCor,
      dEspacoEntreSecoes: dEspacoEntreSecoes ?? this.dEspacoEntreSecoes,
      dRaioSecao: dRaioSecao ?? this.dRaioSecao,
      dRaioCentral: dRaioCentral ?? this.dRaioCentral,
      iCorVazioCentral: iCorVazioCentral ?? this.iCorVazioCentral,
    );
  }

  factory FPaineisRGraficoPizza.fromJson(Map<String, dynamic> json) => _$FPaineisRGraficoPizzaFromJson(json);
  Map<String, dynamic> toJson() => _$FPaineisRGraficoPizzaToJson(this);

  factory FPaineisRGraficoPizza.fromJsonString(String jsonS) => FPaineisRGraficoPizza.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$FPaineisRGraficoPizzaToJson(this), toEncodable: FJson.dataHoraToJson);

  static List<FPaineisRGraficoPizza> lFPaineisRGraficoPizzaFromJson(String str) => List<FPaineisRGraficoPizza>.from(jsonDecode(str).map((x) => FPaineisRGraficoPizza.fromJson(x)));
  static List<FPaineisRGraficoPizza> lFPaineisRGraficoPizzaFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => FPaineisRGraficoPizza.fromJson(x)).toList();

  static String lFPaineisRGraficoPizzaToJson(List<FPaineisRGraficoPizza> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraToJson);
}

