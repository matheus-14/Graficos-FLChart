// ignore_for_file: file_names

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:fl_chart_test/funcoes/fJson.dart';

part 'FBIPainel.g.dart';

@JsonSerializable(explicitToJson: true)
class FBIPainel {
  String sTitulo;
  String sObservacao;
  int iTipoGrafico;
  String sTabela;
  int iDataAgrupar;
  String? sGroupBy1Campo;
  int? iGroupBy1DataOpcao;
  String? sGroupBy2Campo;
  int? iGroupBy2DataOpcao;
  String? sGroupBy3Campo;
  int? iGroupBy3DataOpcao;
  String? sGroupBy4Campo;
  int? iGroupBy4DataOpcao;
  String sCamposValor1;
  String sCamposValor2;
  String sCamposValor3;
  String sOrderBy1Campo;
  int? iOrderBy1AscDesc;
  String? sOrderBy2Campo;
  int? iOrderBy2AscDesc;
  String? sOrderBy3Campo;
  int? iOrderBy3AscDesc;

  // FBIGraficoGeral oGrafGeral;
  // FBIGraficoLinha oGrafLinha;
  // FBIGraficoBarra oGrafBarra;
  // FBIGraficoPizza oGrafPizza;
  // FBIGraficoDispersao oGrafDispersao;
  // FBIGraficoRadar oGrafRadar;

  FBIPainel({
    this.sTitulo = "",
    this.sObservacao = "",
    this.iTipoGrafico = 0,
    this.sTabela = "",
    this.iDataAgrupar = 0,
    this.sGroupBy1Campo = "",
    this.iGroupBy1DataOpcao,
    this.sGroupBy2Campo = "",
    this.iGroupBy2DataOpcao,
    this.sGroupBy3Campo = "",
    this.iGroupBy3DataOpcao,
    this.sGroupBy4Campo = "",
    this.iGroupBy4DataOpcao,
    this.sCamposValor1 = "",
    this.sCamposValor2 = "",
    this.sCamposValor3 = "",
    this.sOrderBy1Campo = "",
    this.iOrderBy1AscDesc,
    this.sOrderBy2Campo = "",
    this.iOrderBy2AscDesc,
    this.sOrderBy3Campo = "",
    this.iOrderBy3AscDesc,
  });

  FBIPainel copyWith({
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
  }) {
    return FBIPainel(
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
    );
  }

  factory FBIPainel.fromJson(Map<String, dynamic> json) => _$FBIPainelFromJson(json);
  Map<String, dynamic> toJson() => _$FBIPainelToJson(this);

  factory FBIPainel.fromJsonString(String jsonS) => FBIPainel.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$FBIPainelToJson(this), toEncodable: FJson.dataHoraSeralizer);

  static List<FBIPainel> lFBIPainelFromJson(String str) => List<FBIPainel>.from(jsonDecode(str).map((x) => FBIPainel.fromJson(x)));
  static List<FBIPainel> lFBIPainelFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => FBIPainel.fromJson(x)).toList();

  static String lFBIPainelToJson(List<FBIPainel> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}
