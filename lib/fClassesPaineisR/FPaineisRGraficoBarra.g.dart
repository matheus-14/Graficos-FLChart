// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FPaineisRGraficoBarra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FPaineisRGraficoBarra _$FPaineisRGraficoBarraFromJson(
        Map<String, dynamic> json) =>
    FPaineisRGraficoBarra(
      listaBarrasTamanho: (json['listaBarrasTamanho'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      iTipoBarra: (json['iTipoBarra'] as num?)?.toInt() ?? 1,
      iBarraVerticalHorizontal:
          (json['iBarraVerticalHorizontal'] as num?)?.toInt() ?? 1,
      iPontasArredondadas: (json['iPontasArredondadas'] as num?)?.toInt() ?? 1,
      sTituloNome: json['sTituloNome'] as String? ?? "Grafico de Barra",
      oTituloCor: (json['oTituloCor'] as num?)?.toInt() ?? 0xFF000000,
      iTituloExibir: (json['iTituloExibir'] as num?)?.toInt() ?? 1,
      iTituloCimaBaixo: (json['iTituloCimaBaixo'] as num?)?.toInt() ?? 1,
      iMostrarBorda: (json['iMostrarBorda'] as num?)?.toInt() ?? 2,
      corDaBorda: (json['corDaBorda'] as num?)?.toInt() ?? 0xFF000000,
      iMostarGrid: (json['iMostarGrid'] as num?)?.toInt() ?? 1,
      iEixoXAltura: (json['iEixoXAltura'] as num?)?.toInt() ?? 30,
      oEixoXCor: (json['oEixoXCor'] as num?)?.toInt() ?? 0xFF000000,
      iEixoXExibir: (json['iEixoXExibir'] as num?)?.toInt() ?? 2,
      iEixoXCimaBaixo: (json['iEixoXCimaBaixo'] as num?)?.toInt() ?? 1,
      iEixoXExibirTitulo: (json['iEixoXExibirTitulo'] as num?)?.toInt() ?? 2,
      iEixoYAltura: (json['iEixoYAltura'] as num?)?.toInt() ?? 30,
      oEixoYCor: (json['oEixoYCor'] as num?)?.toInt() ?? 0xFF000000,
      iEixoYExibir: (json['iEixoYExibir'] as num?)?.toInt() ?? 2,
      iEixoYEsquerdaDireita:
          (json['iEixoYEsquerdaDireita'] as num?)?.toInt() ?? 1,
      iEixoYExibirTitulo: (json['iEixoYExibirTitulo'] as num?)?.toInt() ?? 2,
      dBarra1Espessura: (json['dBarra1Espessura'] as num?)?.toDouble(),
      oBarra1Cor: (json['oBarra1Cor'] as num?)?.toInt(),
      iBarra1CorGradiente: (json['iBarra1CorGradiente'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FPaineisRGraficoBarraToJson(
        FPaineisRGraficoBarra instance) =>
    <String, dynamic>{
      'listaBarrasTamanho': instance.listaBarrasTamanho,
      'iTipoBarra': instance.iTipoBarra,
      'iBarraVerticalHorizontal': instance.iBarraVerticalHorizontal,
      'iPontasArredondadas': instance.iPontasArredondadas,
      'sTituloNome': instance.sTituloNome,
      'oTituloCor': instance.oTituloCor,
      'iTituloExibir': instance.iTituloExibir,
      'iTituloCimaBaixo': instance.iTituloCimaBaixo,
      'iMostrarBorda': instance.iMostrarBorda,
      'corDaBorda': instance.corDaBorda,
      'iMostarGrid': instance.iMostarGrid,
      'iEixoXAltura': instance.iEixoXAltura,
      'oEixoXCor': instance.oEixoXCor,
      'iEixoXExibir': instance.iEixoXExibir,
      'iEixoXCimaBaixo': instance.iEixoXCimaBaixo,
      'iEixoXExibirTitulo': instance.iEixoXExibirTitulo,
      'iEixoYAltura': instance.iEixoYAltura,
      'oEixoYCor': instance.oEixoYCor,
      'iEixoYExibir': instance.iEixoYExibir,
      'iEixoYEsquerdaDireita': instance.iEixoYEsquerdaDireita,
      'iEixoYExibirTitulo': instance.iEixoYExibirTitulo,
      'dBarra1Espessura': instance.dBarra1Espessura,
      'oBarra1Cor': instance.oBarra1Cor,
      'iBarra1CorGradiente': instance.iBarra1CorGradiente,
    };
