// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FPaineisRGraficoRadar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FPaineisRGraficoRadar _$FPaineisRGraficoRadarFromJson(
        Map<String, dynamic> json) =>
    FPaineisRGraficoRadar(
      bIsFormatoCircular: (json['bIsFormatoCircular'] as num?)?.toInt(),
      sTituloNome: json['sTituloNome'] as String?,
      oTituloCor: (json['oTituloCor'] as num?)?.toInt(),
      iTituloExibir: (json['iTituloExibir'] as num?)?.toInt(),
      iTituloCimaBaixo: (json['iTituloCimaBaixo'] as num?)?.toInt(),
      corDeFundo: (json['corDeFundo'] as num?)?.toInt(),
      corDaBorda: (json['corDaBorda'] as num?)?.toInt(),
      iEspessuraDaBorda: (json['iEspessuraDaBorda'] as num?)?.toInt(),
      iDistanciaTitulos: (json['iDistanciaTitulos'] as num?)?.toInt(),
      iTamanhoTitulos: (json['iTamanhoTitulos'] as num?)?.toInt(),
      corTitulos: (json['corTitulos'] as num?)?.toInt(),
      sTitulos: (json['sTitulos'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      quantidadeDeTicks: (json['quantidadeDeTicks'] as num?)?.toInt(),
      iEspessuraTicks: (json['iEspessuraTicks'] as num?)?.toInt(),
      corDosTicks: (json['corDosTicks'] as num?)?.toInt(),
      sDescricaoTicks: json['sDescricaoTicks'] as String?,
      iTamanhoDescricaoTicks: (json['iTamanhoDescricaoTicks'] as num?)?.toInt(),
      corDescricaoTicks: (json['corDescricaoTicks'] as num?)?.toInt(),
      iEspessuraGridVertical: (json['iEspessuraGridVertical'] as num?)?.toInt(),
      corGridVertical: (json['corGridVertical'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FPaineisRGraficoRadarToJson(
        FPaineisRGraficoRadar instance) =>
    <String, dynamic>{
      'bIsFormatoCircular': instance.bIsFormatoCircular,
      'sTituloNome': instance.sTituloNome,
      'oTituloCor': instance.oTituloCor,
      'iTituloExibir': instance.iTituloExibir,
      'iTituloCimaBaixo': instance.iTituloCimaBaixo,
      'corDeFundo': instance.corDeFundo,
      'corDaBorda': instance.corDaBorda,
      'iEspessuraDaBorda': instance.iEspessuraDaBorda,
      'iDistanciaTitulos': instance.iDistanciaTitulos,
      'iTamanhoTitulos': instance.iTamanhoTitulos,
      'corTitulos': instance.corTitulos,
      'sTitulos': instance.sTitulos,
      'quantidadeDeTicks': instance.quantidadeDeTicks,
      'iEspessuraTicks': instance.iEspessuraTicks,
      'corDosTicks': instance.corDosTicks,
      'sDescricaoTicks': instance.sDescricaoTicks,
      'iTamanhoDescricaoTicks': instance.iTamanhoDescricaoTicks,
      'corDescricaoTicks': instance.corDescricaoTicks,
      'iEspessuraGridVertical': instance.iEspessuraGridVertical,
      'corGridVertical': instance.corGridVertical,
    };
