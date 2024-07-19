// ignore_for_file: file_names

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:fl_chart_test/funcoes/fJson.dart';

part 'FPaineisRGraficoRadar.g.dart';

@JsonSerializable(explicitToJson: true)
class FPaineisRGraficoRadar {
  int? bIsFormatoCircular; // (1)Circular, (2)Poligonal
  String? sTituloNome;
  int? oTituloCor;
  int? iTituloExibir; // Sim, Não
  int? iTituloCimaBaixo; // Em cima, Embaixo
  int? corDeFundo;
  int? corDaBorda;
  int? iEspessuraDaBorda;
  int? iDistanciaTitulos;
  int? iTamanhoTitulos;
  int? corTitulos;
  List<String>? sTitulos;
  int? quantidadeDeTicks;
  int? iEspessuraTicks;
  int? corDosTicks;
  String? sDescricaoTicks;
  int? iTamanhoDescricaoTicks;
  int? corDescricaoTicks;
  int? iEspessuraGridVertical;
  int? corGridVertical;

  FPaineisRGraficoRadar({
    this.bIsFormatoCircular,
    this.sTituloNome,
    this.oTituloCor,
    this.iTituloExibir,
    this.iTituloCimaBaixo,
    this.corDeFundo,
    this.corDaBorda,
    this.iEspessuraDaBorda,
    this.iDistanciaTitulos,
    this.iTamanhoTitulos,
    this.corTitulos,
    this.sTitulos,
    this.quantidadeDeTicks,
    this.iEspessuraTicks,
    this.corDosTicks,
    this.sDescricaoTicks,
    this.iTamanhoDescricaoTicks,
    this.corDescricaoTicks,
    this.iEspessuraGridVertical,
    this.corGridVertical,
  });

  FPaineisRGraficoRadar copyWith({
    int? bIsFormatoCircular, // (1)Circular, (2)Poligonal
    String? sTituloNome,
    int? oTituloCor,
    int? iTituloExibir, // Sim, Não
    int? iTituloCimaBaixo, // Em cima, Embaixo
    int? corDeFundo,
    int? corDaBorda,
    int? iEspessuraDaBorda,
    int? iDistanciaTitulos,
    int? iTamanhoTitulos,
    int? corTitulos,
    List<String>? sTitulos,
    int? quantidadeDeTicks,
    int? iEspessuraTicks,
    int? corDosTicks,
    String? sDescricaoTicks,
    int? iTamanhoDescricaoTicks,
    int? corDescricaoTicks,
    int? iEspessuraGridVertical,
    int? corGridVertical,
  }) {
    return FPaineisRGraficoRadar(
      bIsFormatoCircular: bIsFormatoCircular ?? bIsFormatoCircular,
      sTituloNome: sTituloNome ?? sTituloNome,
      oTituloCor: oTituloCor ?? oTituloCor,
      iTituloExibir: iTituloExibir ?? iTituloExibir,
      iTituloCimaBaixo: iTituloCimaBaixo ?? iTituloCimaBaixo,
      corDeFundo: corDeFundo ?? corDeFundo,
      corDaBorda: corDaBorda ?? corDaBorda,
      iEspessuraDaBorda: iEspessuraDaBorda ?? iEspessuraDaBorda,
      iDistanciaTitulos: iDistanciaTitulos ?? iDistanciaTitulos,
      iTamanhoTitulos: iTamanhoTitulos ?? iTamanhoTitulos,
      corTitulos: corTitulos ?? corTitulos,
      sTitulos: sTitulos ?? sTitulos,
      quantidadeDeTicks: quantidadeDeTicks ?? quantidadeDeTicks,
      iEspessuraTicks: iEspessuraTicks ?? iEspessuraTicks,
      corDosTicks: corDosTicks ?? corDosTicks,
      sDescricaoTicks: sDescricaoTicks ?? sDescricaoTicks,
      iTamanhoDescricaoTicks: iTamanhoDescricaoTicks ?? iTamanhoDescricaoTicks,
      corDescricaoTicks: corDescricaoTicks ?? corDescricaoTicks,
      iEspessuraGridVertical: iEspessuraGridVertical ?? iEspessuraGridVertical,
      corGridVertical: corGridVertical ?? corGridVertical,
    );
  }

  factory FPaineisRGraficoRadar.fromJson(Map<String, dynamic> json) => _$FPaineisRGraficoRadarFromJson(json);
  Map<String, dynamic> toJson() => _$FPaineisRGraficoRadarToJson(this);

  factory FPaineisRGraficoRadar.fromJsonString(String jsonS) => FPaineisRGraficoRadar.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$FPaineisRGraficoRadarToJson(this), toEncodable: FJson.dataHoraToJson);

  static List<FPaineisRGraficoRadar> lFPaineisRGraficoRadarFromJson(String str) => List<FPaineisRGraficoRadar>.from(jsonDecode(str).map((x) => FPaineisRGraficoRadar.fromJson(x)));
  static List<FPaineisRGraficoRadar> lFPaineisRGraficoRadarFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => FPaineisRGraficoRadar.fromJson(x)).toList();

  static String lFPaineisRGraficoRadarToJson(List<FPaineisRGraficoRadar> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraToJson);
}
