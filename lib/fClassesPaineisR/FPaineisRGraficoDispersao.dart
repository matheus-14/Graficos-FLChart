// ignore_for_file: file_names

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:fl_chart_test/funcoes/fJson.dart';

part 'FPaineisRGraficoDispersao.g.dart';

@JsonSerializable(explicitToJson: true)
class FPaineisRGraficoDispersao {
  List<double>? listaPontos;
  List<double>? listaRaioDosPontos;

  String? sTituloNome;
  int? oTituloCor;
  int? iTituloExibir; // Sim, Não
  int? iTituloCimaBaixo; // Em cima, Embaixo

  int? iMostrarBorda; // Sim, Não
  int? corDaBorda;
  int? iMostarGrid; // Mostrar vertical e horizontal, Mostrar vertical, Mostrar horizontal, Não mostrar

  int? iEixoXAltura;
  int? oEixoXCor;
  int? iEixoXExibir; // Sim, Não
  int? iEixoXCimaBaixo; // Em cima, Embaixo
  int? iEixoXExibirTitulo; // Sim, Não

  int? iEixoYAltura;
  int? oEixoYCor;
  int? iEixoYExibir; // Sim, Não
  int? iEixoYEsquerdaDireita; // Esquerda, Direita
  int? iEixoYExibirTitulo; // Sim, Não

  FPaineisRGraficoDispersao({
    this.listaPontos,
    this.listaRaioDosPontos,
    this.sTituloNome,
    this.oTituloCor,
    this.iTituloExibir,
    this.iTituloCimaBaixo,
    this.iMostrarBorda,
    this.corDaBorda,
    this.iMostarGrid,
    this.iEixoXAltura,
    this.oEixoXCor,
    this.iEixoXExibir,
    this.iEixoXCimaBaixo,
    this.iEixoXExibirTitulo,
    this.iEixoYAltura,
    this.oEixoYCor,
    this.iEixoYExibir,
    this.iEixoYEsquerdaDireita,
    this.iEixoYExibirTitulo,
  });

  FPaineisRGraficoDispersao copyWith({
    List<double>? listaPontos,
    List<double>? listaRaioDosPontos,
    String? sTituloNome,
    int? oTituloCor,
    int? iTituloExibir,
    int? iTituloCimaBaixo,
    int? iMostrarBorda,
    int? corDaBorda,
    int? iMostarGrid,
    int? iEixoXAltura,
    int? oEixoXCor,
    int? iEixoXExibir,
    int? iEixoXCimaBaixo,
    int? iEixoXExibirTitulo,
    int? iEixoYAltura,
    int? oEixoYCor,
    int? iEixoYExibir,
    int? iEixoYEsquerdaDireita,
    int? iEixoYExibirTitulo,
  }) {
    return FPaineisRGraficoDispersao(
      listaPontos: listaPontos ?? listaPontos,
      listaRaioDosPontos: listaRaioDosPontos ?? listaRaioDosPontos,
      sTituloNome: sTituloNome ?? sTituloNome,
      oTituloCor: oTituloCor ?? oTituloCor,
      iTituloExibir: iTituloExibir ?? iTituloExibir,
      iTituloCimaBaixo: iTituloCimaBaixo ?? iTituloCimaBaixo,
      iMostrarBorda: iMostrarBorda ?? iMostrarBorda,
      corDaBorda: corDaBorda ?? corDaBorda,
      iMostarGrid: iMostarGrid ?? iMostarGrid,
      iEixoXAltura: iEixoXAltura ?? iEixoXAltura,
      oEixoXCor: oEixoXCor ?? oEixoXCor,
      iEixoXExibir: iEixoXExibir ?? iEixoXExibir,
      iEixoXCimaBaixo: iEixoXCimaBaixo ?? iEixoXCimaBaixo,
      iEixoXExibirTitulo: iEixoXExibirTitulo ?? iEixoXExibirTitulo,
      iEixoYAltura: iEixoYAltura ?? iEixoYAltura,
      oEixoYCor: oEixoYCor ?? oEixoYCor,
      iEixoYExibir: iEixoYExibir ?? iEixoYExibir,
      iEixoYEsquerdaDireita: iEixoYEsquerdaDireita ?? iEixoYEsquerdaDireita,
      iEixoYExibirTitulo: iEixoYExibirTitulo ?? iEixoYExibirTitulo,
    );
  }

  factory FPaineisRGraficoDispersao.fromJson(Map<String, dynamic> json) => _$FPaineisRGraficoDispersaoFromJson(json);
  Map<String, dynamic> toJson() => _$FPaineisRGraficoDispersaoToJson(this);

  factory FPaineisRGraficoDispersao.fromJsonString(String jsonS) => FPaineisRGraficoDispersao.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$FPaineisRGraficoDispersaoToJson(this), toEncodable: FJson.dataHoraToJson);

  static List<FPaineisRGraficoDispersao> lFPaineisRGraficoDispersaoFromJson(String str) => List<FPaineisRGraficoDispersao>.from(jsonDecode(str).map((x) => FPaineisRGraficoDispersao.fromJson(x)));
  static List<FPaineisRGraficoDispersao> lFPaineisRGraficoDispersaoFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => FPaineisRGraficoDispersao.fromJson(x)).toList();

  static String lFPaineisRGraficoDispersaoToJson(List<FPaineisRGraficoDispersao> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraToJson);
}
