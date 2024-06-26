// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paineis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paineis _$PaineisFromJson(Map<String, dynamic> json) => Paineis(
      titulo: json['titulo'] as String? ?? "",
      observacao: json['observacao'] as String? ?? "",
      tipoGrafico: json['tipoGrafico'] as String? ?? "",
      tabela: json['tabela'] as String? ?? "",
    );

Map<String, dynamic> _$PaineisToJson(Paineis instance) => <String, dynamic>{
      'titulo': instance.titulo,
      'observacao': instance.observacao,
      'tipoGrafico': instance.tipoGrafico,
      'tabela': instance.tabela,
    };
