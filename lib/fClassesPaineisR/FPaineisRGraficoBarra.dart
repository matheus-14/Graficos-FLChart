// ignore_for_file: file_names

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:fl_chart_test/funcoes/fJson.dart';

part 'FPaineisRGraficoBarra.g.dart';

@JsonSerializable(explicitToJson: true)
class FPaineisRGraficoBarra {
  List<int>? listaBarrasTamanho;
  int? iTipoBarra; // (1)Barra, (2)Barra empilhada
  int? iBarraVerticalHorizontal; // (1)Vertical, (2)Horizontal
  int? iPontasArredondadas; // Ponta reta, Ponta media, Ponta arredondada

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

  double? dBarra1Espessura;
  int? oBarra1Cor;
  int? iBarra1CorGradiente; // Sim, Não

  FPaineisRGraficoBarra({
    this.listaBarrasTamanho,
    this.iTipoBarra = 1,
    this.iBarraVerticalHorizontal = 1,
    this.iPontasArredondadas = 1,
    this.sTituloNome = "Grafico de Barra",
    this.oTituloCor = 0xFF000000,
    this.iTituloExibir = 1,
    this.iTituloCimaBaixo = 1,
    this.iMostrarBorda = 2,
    this.corDaBorda = 0xFF000000,
    this.iMostarGrid = 1,
    this.iEixoXAltura = 30,
    this.oEixoXCor = 0xFF000000,
    this.iEixoXExibir = 2,
    this.iEixoXCimaBaixo = 1,
    this.iEixoXExibirTitulo = 2,
    this.iEixoYAltura = 30,
    this.oEixoYCor = 0xFF000000,
    this.iEixoYExibir = 2,
    this.iEixoYEsquerdaDireita = 1,
    this.iEixoYExibirTitulo = 2,
    this.dBarra1Espessura,
    this.oBarra1Cor,
    this.iBarra1CorGradiente,
  });

  FPaineisRGraficoBarra copyWith({
    List<int>? listaBarrasTamanho,
    int? iTipoBarra,
    int? iBarraVerticalHorizontal,
    int? iPontasArredondadas,
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
    double? dBarra1Espessura,
    int? oBarra1Cor,
    int? iBarra1CorGradiente,
  }) {
    return FPaineisRGraficoBarra(
      listaBarrasTamanho: listaBarrasTamanho ?? this.listaBarrasTamanho,
      iTipoBarra: iTipoBarra ?? this.iTipoBarra,
      iBarraVerticalHorizontal: iBarraVerticalHorizontal ?? this.iBarraVerticalHorizontal,
      iPontasArredondadas: iPontasArredondadas ?? this.iPontasArredondadas,
      sTituloNome: sTituloNome ?? this.sTituloNome,
      oTituloCor: oTituloCor ?? this.oTituloCor,
      iTituloExibir: iTituloExibir ?? this.iTituloExibir,
      iTituloCimaBaixo: iTituloCimaBaixo ?? this.iTituloCimaBaixo,
      iMostrarBorda: iMostrarBorda ?? this.iMostrarBorda,
      corDaBorda: corDaBorda ?? this.corDaBorda,
      iMostarGrid: iMostarGrid ?? this.iMostarGrid,
      iEixoXAltura: iEixoXAltura ?? this.iEixoXAltura,
      oEixoXCor: oEixoXCor ?? this.oEixoXCor,
      iEixoXExibir: iEixoXExibir ?? this.iEixoXExibir,
      iEixoXCimaBaixo: iEixoXCimaBaixo ?? this.iEixoXCimaBaixo,
      iEixoXExibirTitulo: iEixoXExibirTitulo ?? this.iEixoXExibirTitulo,
      iEixoYAltura: iEixoYAltura ?? this.iEixoYAltura,
      oEixoYCor: oEixoYCor ?? this.oEixoYCor,
      iEixoYExibir: iEixoYExibir ?? this.iEixoYExibir,
      iEixoYEsquerdaDireita: iEixoYEsquerdaDireita ?? this.iEixoYEsquerdaDireita,
      iEixoYExibirTitulo: iEixoYExibirTitulo ?? this.iEixoYExibirTitulo,
      dBarra1Espessura: dBarra1Espessura ?? this.dBarra1Espessura,
      oBarra1Cor: oBarra1Cor ?? this.oBarra1Cor,
      iBarra1CorGradiente: iBarra1CorGradiente ?? this.iBarra1CorGradiente,
    );
  }

  factory FPaineisRGraficoBarra.fromJson(Map<String, dynamic> json) => _$FPaineisRGraficoBarraFromJson(json);
  Map<String, dynamic> toJson() => _$FPaineisRGraficoBarraToJson(this);

  factory FPaineisRGraficoBarra.fromJsonString(String jsonS) => FPaineisRGraficoBarra.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$FPaineisRGraficoBarraToJson(this), toEncodable: FJson.dataHoraToJson);

  static List<FPaineisRGraficoBarra> lFPaineisRGraficoBarraFromJson(String str) => List<FPaineisRGraficoBarra>.from(jsonDecode(str).map((x) => FPaineisRGraficoBarra.fromJson(x)));
  static List<FPaineisRGraficoBarra> lFPaineisRGraficoBarraFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => FPaineisRGraficoBarra.fromJson(x)).toList();

  static String lFPaineisRGraficoBarraToJson(List<FPaineisRGraficoBarra> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraToJson);
}
