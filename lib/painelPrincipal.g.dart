// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'painelPrincipal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Painelprincipal _$PainelprincipalFromJson(Map<String, dynamic> json) =>
    Painelprincipal(
      titulo: json['titulo'] as String? ?? "",
      observacoes: json['observacoes'] as String? ?? "",
      listaPaineis: (json['listaPaineis'] as List<dynamic>)
          .map((e) => Paineis.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PainelprincipalToJson(Painelprincipal instance) =>
    <String, dynamic>{
      'titulo': instance.titulo,
      'observacoes': instance.observacoes,
      'listaPaineis': instance.listaPaineis.map((e) => e.toJson()).toList(),
    };
