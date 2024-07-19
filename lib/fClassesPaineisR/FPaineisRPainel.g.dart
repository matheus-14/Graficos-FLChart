// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FPaineisRPainel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FPaineisRPainel _$FPaineisRPainelFromJson(Map<String, dynamic> json) =>
    FPaineisRPainel(
      sTitulo: json['sTitulo'] as String? ?? "sTitulo FPaineisRPainel",
      sObservacao:
          json['sObservacao'] as String? ?? "sObservacao FPaineisRPainel",
      iTipoGrafico: (json['iTipoGrafico'] as num?)?.toInt(),
      sTabela: json['sTabela'] as String? ?? "sTabela",
      iDataAgrupar: (json['iDataAgrupar'] as num?)?.toInt() ?? 1,
      sGroupBy1Campo: json['sGroupBy1Campo'] as String? ?? "sGroupBy1Campo",
      iGroupBy1DataOpcao: (json['iGroupBy1DataOpcao'] as num?)?.toInt() ?? 2,
      sGroupBy2Campo: json['sGroupBy2Campo'] as String? ?? "sGroupBy2Campo",
      iGroupBy2DataOpcao: (json['iGroupBy2DataOpcao'] as num?)?.toInt() ?? 3,
      sGroupBy3Campo: json['sGroupBy3Campo'] as String? ?? "sGroupBy3Campo",
      iGroupBy3DataOpcao: (json['iGroupBy3DataOpcao'] as num?)?.toInt() ?? 4,
      sGroupBy4Campo: json['sGroupBy4Campo'] as String? ?? "sGroupBy4Campo",
      iGroupBy4DataOpcao: (json['iGroupBy4DataOpcao'] as num?)?.toInt() ?? 5,
      sCamposValor1: json['sCamposValor1'] as String? ?? "sCamposValor1",
      sCamposValor2: json['sCamposValor2'] as String? ?? "sCamposValor2",
      sCamposValor3: json['sCamposValor3'] as String? ?? "sCamposValor3",
      sOrderBy1Campo: json['sOrderBy1Campo'] as String? ?? "sOrderBy1Campo",
      iOrderBy1AscDesc: (json['iOrderBy1AscDesc'] as num?)?.toInt() ?? 6,
      sOrderBy2Campo: json['sOrderBy2Campo'] as String? ?? "sOrderBy2Campo",
      iOrderBy2AscDesc: (json['iOrderBy2AscDesc'] as num?)?.toInt() ?? 7,
      sOrderBy3Campo: json['sOrderBy3Campo'] as String? ?? "sOrderBy3Campo",
      iOrderBy3AscDesc: (json['iOrderBy3AscDesc'] as num?)?.toInt() ?? 8,
      oGrafLinha: json['oGrafLinha'] == null
          ? null
          : FPaineisRGraficoLinha.fromJson(
              json['oGrafLinha'] as Map<String, dynamic>),
      oGrafBarra: json['oGrafBarra'] == null
          ? null
          : FPaineisRGraficoBarra.fromJson(
              json['oGrafBarra'] as Map<String, dynamic>),
      oGrafPizza: json['oGrafPizza'] == null
          ? null
          : FPaineisRGraficoPizza.fromJson(
              json['oGrafPizza'] as Map<String, dynamic>),
      oGrafDispersao: json['oGrafDispersao'] == null
          ? null
          : FPaineisRGraficoDispersao.fromJson(
              json['oGrafDispersao'] as Map<String, dynamic>),
      oGrafRadar: json['oGrafRadar'] == null
          ? null
          : FPaineisRGraficoRadar.fromJson(
              json['oGrafRadar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FPaineisRPainelToJson(FPaineisRPainel instance) =>
    <String, dynamic>{
      'sTitulo': instance.sTitulo,
      'sObservacao': instance.sObservacao,
      'iTipoGrafico': instance.iTipoGrafico,
      'sTabela': instance.sTabela,
      'iDataAgrupar': instance.iDataAgrupar,
      'sGroupBy1Campo': instance.sGroupBy1Campo,
      'iGroupBy1DataOpcao': instance.iGroupBy1DataOpcao,
      'sGroupBy2Campo': instance.sGroupBy2Campo,
      'iGroupBy2DataOpcao': instance.iGroupBy2DataOpcao,
      'sGroupBy3Campo': instance.sGroupBy3Campo,
      'iGroupBy3DataOpcao': instance.iGroupBy3DataOpcao,
      'sGroupBy4Campo': instance.sGroupBy4Campo,
      'iGroupBy4DataOpcao': instance.iGroupBy4DataOpcao,
      'sCamposValor1': instance.sCamposValor1,
      'sCamposValor2': instance.sCamposValor2,
      'sCamposValor3': instance.sCamposValor3,
      'sOrderBy1Campo': instance.sOrderBy1Campo,
      'iOrderBy1AscDesc': instance.iOrderBy1AscDesc,
      'sOrderBy2Campo': instance.sOrderBy2Campo,
      'iOrderBy2AscDesc': instance.iOrderBy2AscDesc,
      'sOrderBy3Campo': instance.sOrderBy3Campo,
      'iOrderBy3AscDesc': instance.iOrderBy3AscDesc,
      'oGrafLinha': instance.oGrafLinha?.toJson(),
      'oGrafBarra': instance.oGrafBarra?.toJson(),
      'oGrafPizza': instance.oGrafPizza?.toJson(),
      'oGrafDispersao': instance.oGrafDispersao?.toJson(),
      'oGrafRadar': instance.oGrafRadar?.toJson(),
    };
