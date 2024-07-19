// ignore_for_file: file_names

import 'dart:convert';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRGraficoBarra.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRGraficoDispersao.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRGraficoLinha.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRGraficoPizza.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRGraficoRadar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:fl_chart_test/funcoes/fJson.dart';

part 'FPaineisRPainel.g.dart';

@JsonSerializable(explicitToJson: true)
class FPaineisRPainel {
  String? sTitulo;
  String? sObservacao;
  int? iTipoGrafico;
  String? sTabela;
  int? iDataAgrupar;
  String? sGroupBy1Campo;
  int? iGroupBy1DataOpcao;
  String? sGroupBy2Campo;
  int? iGroupBy2DataOpcao;
  String? sGroupBy3Campo;
  int? iGroupBy3DataOpcao;
  String? sGroupBy4Campo;
  int? iGroupBy4DataOpcao;
  String? sCamposValor1;
  String? sCamposValor2;
  String? sCamposValor3;
  String? sOrderBy1Campo;
  int? iOrderBy1AscDesc;
  String? sOrderBy2Campo;
  int? iOrderBy2AscDesc;
  String? sOrderBy3Campo;
  int? iOrderBy3AscDesc;
  FPaineisRGraficoLinha? oGrafLinha;
  FPaineisRGraficoBarra? oGrafBarra;
  FPaineisRGraficoPizza? oGrafPizza;
  FPaineisRGraficoDispersao? oGrafDispersao;
  FPaineisRGraficoRadar? oGrafRadar;

  FPaineisRPainel({
    this.sTitulo = "sTitulo FPaineisRPainel",
    this.sObservacao = "sObservacao FPaineisRPainel",
    required this.iTipoGrafico,
    this.sTabela = "sTabela",
    this.iDataAgrupar = 1,
    this.sGroupBy1Campo = "sGroupBy1Campo",
    this.iGroupBy1DataOpcao = 2,
    this.sGroupBy2Campo = "sGroupBy2Campo",
    this.iGroupBy2DataOpcao = 3,
    this.sGroupBy3Campo = "sGroupBy3Campo",
    this.iGroupBy3DataOpcao = 4,
    this.sGroupBy4Campo = "sGroupBy4Campo",
    this.iGroupBy4DataOpcao = 5,
    this.sCamposValor1 = "sCamposValor1",
    this.sCamposValor2 = "sCamposValor2",
    this.sCamposValor3 = "sCamposValor3",
    this.sOrderBy1Campo = "sOrderBy1Campo",
    this.iOrderBy1AscDesc = 6,
    this.sOrderBy2Campo = "sOrderBy2Campo",
    this.iOrderBy2AscDesc = 7,
    this.sOrderBy3Campo = "sOrderBy3Campo",
    this.iOrderBy3AscDesc = 8,
    this.oGrafLinha,
    this.oGrafBarra,
    this.oGrafPizza,
    this.oGrafDispersao,
    this.oGrafRadar,
  }) {
    oGrafLinha ??= FPaineisRGraficoLinha();
    oGrafBarra ??= FPaineisRGraficoBarra();
    oGrafPizza ??= FPaineisRGraficoPizza();
    oGrafDispersao ??= FPaineisRGraficoDispersao();
    oGrafRadar ??= FPaineisRGraficoRadar();
  }

  FPaineisRPainel copyWith({
    String? sTitulo,
    String? sObservacao,
    int? iTipoGrafico,
    String? sTabela,
    int? iDataAgrupar,
    String? sGroupBy1Campo,
    int? iGroupBy1DataOpcao,
    String? sGroupBy2Campo,
    int? iGroupBy2DataOpcao,
    String? sGroupBy3Campo,
    int? iGroupBy3DataOpcao,
    String? sGroupBy4Campo,
    int? iGroupBy4DataOpcao,
    String? sCamposValor1,
    String? sCamposValor2,
    String? sCamposValor3,
    String? sOrderBy1Campo,
    int? iOrderBy1AscDesc,
    String? sOrderBy2Campo,
    int? iOrderBy2AscDesc,
    String? sOrderBy3Campo,
    int? iOrderBy3AscDesc,
    required FPaineisRGraficoLinha oGrafLinha,
    required FPaineisRGraficoBarra oGrafBarra,
    required FPaineisRGraficoPizza oGrafPizza,
    required FPaineisRGraficoDispersao oGrafDispersao,
    required FPaineisRGraficoRadar oGrafRadar,
  }) {
    return FPaineisRPainel(
      sTitulo: sTitulo ?? this.sTitulo,
      sObservacao: sObservacao ?? this.sObservacao,
      iTipoGrafico: iTipoGrafico ?? this.iTipoGrafico,
      sTabela: sTabela ?? this.sTabela,
      iDataAgrupar: iDataAgrupar ?? this.iDataAgrupar,
      sGroupBy1Campo: sGroupBy1Campo ?? this.sGroupBy1Campo,
      iGroupBy1DataOpcao: iGroupBy1DataOpcao ?? this.iGroupBy1DataOpcao,
      sGroupBy2Campo: sGroupBy2Campo ?? this.sGroupBy2Campo,
      iGroupBy2DataOpcao: iGroupBy2DataOpcao ?? this.iGroupBy2DataOpcao,
      sGroupBy3Campo: sGroupBy3Campo ?? this.sGroupBy3Campo,
      iGroupBy3DataOpcao: iGroupBy3DataOpcao ?? this.iGroupBy3DataOpcao,
      sGroupBy4Campo: sGroupBy4Campo ?? this.sGroupBy4Campo,
      iGroupBy4DataOpcao: iGroupBy4DataOpcao ?? this.iGroupBy4DataOpcao,
      sCamposValor1: sCamposValor1 ?? this.sCamposValor1,
      sCamposValor2: sCamposValor2 ?? this.sCamposValor2,
      sCamposValor3: sCamposValor3 ?? this.sCamposValor3,
      sOrderBy1Campo: sOrderBy1Campo ?? this.sOrderBy1Campo,
      iOrderBy1AscDesc: iOrderBy1AscDesc ?? this.iOrderBy1AscDesc,
      sOrderBy2Campo: sOrderBy2Campo ?? this.sOrderBy2Campo,
      iOrderBy2AscDesc: iOrderBy2AscDesc ?? this.iOrderBy2AscDesc,
      sOrderBy3Campo: sOrderBy3Campo ?? this.sOrderBy3Campo,
      iOrderBy3AscDesc: iOrderBy3AscDesc ?? this.iOrderBy3AscDesc,
      oGrafLinha: oGrafLinha,
      oGrafBarra: oGrafBarra,
      oGrafPizza: oGrafPizza,
      oGrafDispersao: oGrafDispersao,
      oGrafRadar: oGrafRadar,
    );
  }

  factory FPaineisRPainel.fromJson(Map<String, dynamic> json) => _$FPaineisRPainelFromJson(json);
  Map<String, dynamic> toJson() => _$FPaineisRPainelToJson(this);

  factory FPaineisRPainel.fromJsonString(String jsonS) => FPaineisRPainel.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$FPaineisRPainelToJson(this), toEncodable: FJson.dataHoraToJson);

  static List<FPaineisRPainel> lFPaineisRGraficoFromJson(String str) => List<FPaineisRPainel>.from(jsonDecode(str).map((x) => FPaineisRPainel.fromJson(x)));
  static List<FPaineisRPainel> lFPaineisRGraficoFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => FPaineisRPainel.fromJson(x)).toList();

  static String lFPaineisRGraficoToJson(List<FPaineisRPainel> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraToJson);
}
