// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FPaineisRPrincipal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FPaineisRPrincipal _$FPaineisRPrincipalFromJson(Map<String, dynamic> json) =>
    FPaineisRPrincipal(
      sTitulo: json['sTitulo'] as String? ?? "Painéis de Resultados",
      sObs: json['sObs'] as String? ?? "",
      tDataInclusao: json['tDataInclusao'] == null
          ? null
          : DateTime.parse(json['tDataInclusao'] as String),
      tDataUltima: json['tDataUltima'] == null
          ? null
          : DateTime.parse(json['tDataUltima'] as String),
      listaPaineis: (json['listaPaineis'] as List<dynamic>?)
          ?.map((e) => FPaineisRPainel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FPaineisRPrincipalToJson(FPaineisRPrincipal instance) =>
    <String, dynamic>{
      'sTitulo': instance.sTitulo,
      'sObs': instance.sObs,
      'tDataInclusao': instance.tDataInclusao?.toIso8601String(),
      'tDataUltima': instance.tDataUltima?.toIso8601String(),
      'listaPaineis': instance.listaPaineis?.map((e) => e.toJson()).toList(),
    };
