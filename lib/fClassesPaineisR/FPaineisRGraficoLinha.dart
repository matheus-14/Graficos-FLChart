// ignore_for_file: file_names

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:fl_chart_test/funcoes/fJson.dart';

part 'FPaineisRGraficoLinha.g.dart';

@JsonSerializable(explicitToJson: true)
class FPaineisRGraficoLinha {
  List<int>? listaPontos;
  int? iTipoLinha; // (1)Linha reta, (2)Área reta, (3)Linha curva, (4)Área curva, (5)Degrau, (6)Degrau com área

  String? sTituloNome;
  int? oTituloCor;
  int? iTituloExibir; // Sim, Não
  int? iTituloCimaBaixo; // Em cima, Embaixo

  int? iMostrarBorda; // Sim, Não
  int? corDaBorda;
  int? iMostarGrid; // Mostrar vertical e horizontal, Mostrar vertical, Mostrar horizontal, Não mostrar

  int? iPontosArredondados; // Sim, Não
  int? iPontasArredondadas; // Sim, Não
  int? iMostrarPontos; // Sim, Não
  int? iPreencherArea; // Sim, Não

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

  double? dLinha1Espessura;
  int? oLinha1Cor;
  int? oLinha1AreaCor;
  int? iLinha1CorGradiente; // Sim, Não
  int? iLinha1AreaGradiente; // Sim, Não
  int? iLinha1Tipo; // Normal, Pontilhada, Traço-ponto, Traço
  int? iLinha1AreaCimaBaixo; // Cima, Baixo (default)
  int? iLinha1Sombra; // Sim, Não
  int? oLinha1SombraCor;

  double? dLinha2Espessura;
  int? oLinha2Cor;
  int? oLinha2AreaCor;
  int? iLinha2CorGradiente; // Sim, Não
  int? iLinha2AreaGradiente; // Sim, Não
  int? iLinha2Tipo; // Normal, Pontilhada, Traço-ponto, Traço
  int? iLinha2AreaCimaBaixo; // Cima, Baixo (default)
  int? iLinha2Sombra; // Sim, Não
  int? oLinha2SombraCor;

  double? dLinha3Espessura;
  int? oLinha3Cor;
  int? oLinha3AreaCor;
  int? iLinha3CorGradiente; // Sim, Não
  int? iLinha3AreaGradiente; // Sim, Não
  int? iLinha3Tipo; // Normal, Pontilhada, Traço-ponto, Traço
  int? iLinha3AreaCimaBaixo; // Cima, Baixo (default)
  int? iLinha3Sombra; // Sim, Não
  int? oLinha3SombraCor;

  double? dLinha4Espessura;
  int? oLinha4Cor;
  int? oLinha4AreaCor;
  int? iLinha4CorGradiente; // Sim, Não
  int? iLinha4AreaGradiente; // Sim, Não
  int? iLinha4Tipo; // Normal, Pontilhada, Traço-ponto, Traço
  int? iLinha4AreaCimaBaixo; // Cima, Baixo (default)
  int? iLinha4Sombra; // Sim, Não
  int? oLinha4SombraCor;

  FPaineisRGraficoLinha({
    this.listaPontos,
    this.iTipoLinha = 1,
    this.sTituloNome = "Grafico de Linha",
    this.oTituloCor = 0xFF000000,
    this.iTituloExibir = 1,
    this.iTituloCimaBaixo = 1,
    this.iMostrarBorda = 2,
    this.corDaBorda = 0xFF000000,
    this.iMostarGrid = 1,
    this.iPontosArredondados = 1,
    this.iPontasArredondadas = 1,
    this.iMostrarPontos = 2,
    this.iPreencherArea = 2,
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
    this.dLinha1Espessura = 5,
    this.oLinha1Cor = 0xFFFF0000,
    this.oLinha1AreaCor,
    this.iLinha1CorGradiente,
    this.iLinha1AreaGradiente,
    this.iLinha1Tipo = 1,
    this.iLinha1AreaCimaBaixo = 2,
    this.iLinha1Sombra = 2,
    this.oLinha1SombraCor,
    this.dLinha2Espessura,
    this.oLinha2Cor,
    this.oLinha2AreaCor,
    this.iLinha2CorGradiente,
    this.iLinha2AreaGradiente,
    this.iLinha2Tipo,
    this.iLinha2AreaCimaBaixo,
    this.iLinha2Sombra,
    this.oLinha2SombraCor,
    this.dLinha3Espessura,
    this.oLinha3Cor,
    this.oLinha3AreaCor,
    this.iLinha3CorGradiente,
    this.iLinha3AreaGradiente,
    this.iLinha3Tipo,
    this.iLinha3AreaCimaBaixo,
    this.iLinha3Sombra,
    this.oLinha3SombraCor,
    this.dLinha4Espessura,
    this.oLinha4Cor,
    this.oLinha4AreaCor,
    this.iLinha4CorGradiente,
    this.iLinha4AreaGradiente,
    this.iLinha4Tipo,
    this.iLinha4AreaCimaBaixo,
    this.iLinha4Sombra,
    this.oLinha4SombraCor,
  });

  FPaineisRGraficoLinha copyWith({
    List<int>? listaPontos,
    int? iTipoLinha,
    String? sTituloNome,
    int? oTituloCor,
    int? iTituloExibir,
    int? iTituloCimaBaixo,
    int? iMostrarBorda,
    int? corDaBorda,
    int? iMostarGrid,
    int? iPontosArredondados,
    int? iPontasArredondadas,
    int? iMostrarPontos,
    int? iPreencherArea,
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
    double? dLinha1Espessura,
    int? oLinha1Cor,
    int? oLinha1AreaCor,
    int? iLinha1CorGradiente,
    int? iLinha1AreaGradiente,
    int? iLinha1Tipo,
    int? iLinha1AreaCimaBaixo,
    int? iLinha1Sombra,
    int? oLinha1SombraCor,
    double? dLinha2Espessura,
    int? oLinha2Cor,
    int? oLinha2AreaCor,
    int? iLinha2CorGradiente,
    int? iLinha2AreaGradiente,
    int? iLinha2Tipo,
    int? iLinha2AreaCimaBaixo,
    int? iLinha2Sombra,
    int? oLinha2SombraCor,
    double? dLinha3Espessura,
    int? oLinha3Cor,
    int? oLinha3AreaCor,
    int? iLinha3CorGradiente,
    int? iLinha3AreaGradiente,
    int? iLinha3Tipo,
    int? iLinha3AreaCimaBaixo,
    int? iLinha3Sombra,
    int? oLinha3SombraCor,
    double? dLinha4Espessura,
    int? oLinha4Cor,
    int? oLinha4AreaCor,
    int? iLinha4CorGradiente,
    int? iLinha4AreaGradiente,
    int? iLinha4Tipo,
    int? iLinha4AreaCimaBaixo,
    int? iLinha4Sombra,
    int? oLinha4SombraCor,
  }) {
    return FPaineisRGraficoLinha(
      listaPontos: listaPontos ?? this.listaPontos,
      iTipoLinha: iTipoLinha ?? this.iTipoLinha,
      sTituloNome: sTituloNome ?? this.sTituloNome,
      oTituloCor: oTituloCor ?? this.oTituloCor,
      iTituloExibir: iTituloExibir ?? this.iTituloExibir,
      iTituloCimaBaixo: iTituloCimaBaixo ?? this.iTituloCimaBaixo,
      iMostrarBorda: iMostrarBorda ?? this.iMostrarBorda,
      corDaBorda: corDaBorda ?? this.corDaBorda,
      iMostarGrid: iMostarGrid ?? this.iMostarGrid,
      iPontosArredondados: iPontosArredondados ?? this.iPontosArredondados,
      iPontasArredondadas: iPontasArredondadas ?? this.iPontasArredondadas,
      iMostrarPontos: iMostrarPontos ?? this.iMostrarPontos,
      iPreencherArea: iPreencherArea ?? this.iPreencherArea,
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
      dLinha1Espessura: dLinha1Espessura ?? this.dLinha1Espessura,
      oLinha1Cor: oLinha1Cor ?? this.oLinha1Cor,
      oLinha1AreaCor: oLinha1AreaCor ?? this.oLinha1AreaCor,
      iLinha1CorGradiente: iLinha1CorGradiente ?? this.iLinha1CorGradiente,
      iLinha1AreaGradiente: iLinha1AreaGradiente ?? this.iLinha1AreaGradiente,
      iLinha1Tipo: iLinha1Tipo ?? this.iLinha1Tipo,
      iLinha1AreaCimaBaixo: iLinha1AreaCimaBaixo ?? this.iLinha1AreaCimaBaixo,
      iLinha1Sombra: iLinha1Sombra ?? this.iLinha1Sombra,
      oLinha1SombraCor: oLinha1SombraCor ?? this.oLinha1SombraCor,
      dLinha2Espessura: dLinha2Espessura ?? this.dLinha2Espessura,
      oLinha2Cor: oLinha2Cor ?? this.oLinha2Cor,
      oLinha2AreaCor: oLinha2AreaCor ?? this.oLinha2AreaCor,
      iLinha2CorGradiente: iLinha2CorGradiente ?? this.iLinha2CorGradiente,
      iLinha2AreaGradiente: iLinha2AreaGradiente ?? this.iLinha2AreaGradiente,
      iLinha2Tipo: iLinha2Tipo ?? this.iLinha2Tipo,
      iLinha2AreaCimaBaixo: iLinha2AreaCimaBaixo ?? this.iLinha2AreaCimaBaixo,
      iLinha2Sombra: iLinha2Sombra ?? this.iLinha2Sombra,
      oLinha2SombraCor: oLinha2SombraCor ?? this.oLinha2SombraCor,
      dLinha3Espessura: dLinha3Espessura ?? this.dLinha3Espessura,
      oLinha3Cor: oLinha3Cor ?? this.oLinha3Cor,
      oLinha3AreaCor: oLinha3AreaCor ?? this.oLinha3AreaCor,
      iLinha3CorGradiente: iLinha3CorGradiente ?? this.iLinha3CorGradiente,
      iLinha3AreaGradiente: iLinha3AreaGradiente ?? this.iLinha3AreaGradiente,
      iLinha3Tipo: iLinha3Tipo ?? this.iLinha3Tipo,
      iLinha3AreaCimaBaixo: iLinha3AreaCimaBaixo ?? this.iLinha3AreaCimaBaixo,
      iLinha3Sombra: iLinha3Sombra ?? this.iLinha3Sombra,
      oLinha3SombraCor: oLinha3SombraCor ?? this.oLinha3SombraCor,
      dLinha4Espessura: dLinha4Espessura ?? this.dLinha4Espessura,
      oLinha4Cor: oLinha4Cor ?? this.oLinha4Cor,
      oLinha4AreaCor: oLinha4AreaCor ?? this.oLinha4AreaCor,
      iLinha4CorGradiente: iLinha4CorGradiente ?? this.iLinha4CorGradiente,
      iLinha4AreaGradiente: iLinha4AreaGradiente ?? this.iLinha4AreaGradiente,
      iLinha4Tipo: iLinha4Tipo ?? this.iLinha4Tipo,
      iLinha4AreaCimaBaixo: iLinha4AreaCimaBaixo ?? this.iLinha4AreaCimaBaixo,
      iLinha4Sombra: iLinha4Sombra ?? this.iLinha4Sombra,
      oLinha4SombraCor: oLinha4SombraCor ?? this.oLinha4SombraCor,
    );
  }

  factory FPaineisRGraficoLinha.fromJson(Map<String, dynamic> json) => _$FPaineisRGraficoLinhaFromJson(json);
  Map<String, dynamic> toJson() => _$FPaineisRGraficoLinhaToJson(this);

  factory FPaineisRGraficoLinha.fromJsonString(String jsonS) => FPaineisRGraficoLinha.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$FPaineisRGraficoLinhaToJson(this), toEncodable: FJson.dataHoraToJson);

  static List<FPaineisRGraficoLinha> lFPaineisRGraficoLinhaFromJson(String str) => List<FPaineisRGraficoLinha>.from(jsonDecode(str).map((x) => FPaineisRGraficoLinha.fromJson(x)));
  static List<FPaineisRGraficoLinha> lFPaineisRGraficoLinhaFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => FPaineisRGraficoLinha.fromJson(x)).toList();

  static String lFPaineisRGraficoLinhaToJson(List<FPaineisRGraficoLinha> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraToJson);
}
