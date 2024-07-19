// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FPaineisRGraficoDispersao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FPaineisRGraficoDispersao _$FPaineisRGraficoDispersaoFromJson(
        Map<String, dynamic> json) =>
    FPaineisRGraficoDispersao(
      listaPontos: (json['listaPontos'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      listaRaioDosPontos: (json['listaRaioDosPontos'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      sTituloNome: json['sTituloNome'] as String?,
      oTituloCor: (json['oTituloCor'] as num?)?.toInt(),
      iTituloExibir: (json['iTituloExibir'] as num?)?.toInt(),
      iTituloCimaBaixo: (json['iTituloCimaBaixo'] as num?)?.toInt(),
      iMostrarBorda: (json['iMostrarBorda'] as num?)?.toInt(),
      corDaBorda: (json['corDaBorda'] as num?)?.toInt(),
      iMostarGrid: (json['iMostarGrid'] as num?)?.toInt(),
      iEixoXAltura: (json['iEixoXAltura'] as num?)?.toInt(),
      oEixoXCor: (json['oEixoXCor'] as num?)?.toInt(),
      iEixoXExibir: (json['iEixoXExibir'] as num?)?.toInt(),
      iEixoXCimaBaixo: (json['iEixoXCimaBaixo'] as num?)?.toInt(),
      iEixoXExibirTitulo: (json['iEixoXExibirTitulo'] as num?)?.toInt(),
      iEixoYAltura: (json['iEixoYAltura'] as num?)?.toInt(),
      oEixoYCor: (json['oEixoYCor'] as num?)?.toInt(),
      iEixoYExibir: (json['iEixoYExibir'] as num?)?.toInt(),
      iEixoYEsquerdaDireita: (json['iEixoYEsquerdaDireita'] as num?)?.toInt(),
      iEixoYExibirTitulo: (json['iEixoYExibirTitulo'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FPaineisRGraficoDispersaoToJson(
        FPaineisRGraficoDispersao instance) =>
    <String, dynamic>{
      'listaPontos': instance.listaPontos,
      'listaRaioDosPontos': instance.listaRaioDosPontos,
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
    };
