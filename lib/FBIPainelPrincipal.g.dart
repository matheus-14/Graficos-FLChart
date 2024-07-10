// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FBIPainelPrincipal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FBIPainelPrincipal _$FBIPainelPrincipalFromJson(Map<String, dynamic> json) =>
    FBIPainelPrincipal(
      sTitulo: json['sTitulo'] as String? ?? "",
      sObs: json['sObs'] as String? ?? "",
      tDataInclusao: DateTime.parse(json['tDataInclusao'] as String),
      tDataUltima: DateTime.parse(json['tDataUltima'] as String),
      listaPaineis: (json['listaPaineis'] as List<dynamic>)
          .map((e) => FBIPainel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FBIPainelPrincipalToJson(FBIPainelPrincipal instance) =>
    <String, dynamic>{
      'sTitulo': instance.sTitulo,
      'sObs': instance.sObs,
      'tDataInclusao': instance.tDataInclusao.toIso8601String(),
      'tDataUltima': instance.tDataUltima.toIso8601String(),
      'listaPaineis': instance.listaPaineis.map((e) => e.toJson()).toList(),
    };
