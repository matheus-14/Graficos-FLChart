// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FPaineisRGraficoPizza.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FPaineisRGraficoPizza _$FPaineisRGraficoPizzaFromJson(
        Map<String, dynamic> json) =>
    FPaineisRGraficoPizza(
      listaValores: (json['listaValores'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      iTipoPizza: (json['iTipoPizza'] as num?)?.toInt(),
      sTituloNome: json['sTituloNome'] as String?,
      oTituloCor: (json['oTituloCor'] as num?)?.toInt(),
      iTituloExibir: (json['iTituloExibir'] as num?)?.toInt(),
      iTituloCimaBaixo: (json['iTituloCimaBaixo'] as num?)?.toInt(),
      listaIndicadoresTexto: (json['listaIndicadoresTexto'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      listaIndicadoresCor: (json['listaIndicadoresCor'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      iTamanhoIndicadorNormal:
          (json['iTamanhoIndicadorNormal'] as num?)?.toInt(),
      iTamanhoIndicadorExpandido:
          (json['iTamanhoIndicadorExpandido'] as num?)?.toInt(),
      corTextoIndicadorNormal:
          (json['corTextoIndicadorNormal'] as num?)?.toInt(),
      corTextoIndicadorExpandido:
          (json['corTextoIndicadorExpandido'] as num?)?.toInt(),
      listaTituloSecao: (json['listaTituloSecao'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dPosicaoTituloSecao: (json['dPosicaoTituloSecao'] as num?)?.toDouble(),
      corDaSecao: (json['corDaSecao'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      dEspessuraDaSecao: (json['dEspessuraDaSecao'] as num?)?.toDouble(),
      iContornoSecaoEspessura:
          (json['iContornoSecaoEspessura'] as num?)?.toInt(),
      iContornoSecaoCor: (json['iContornoSecaoCor'] as num?)?.toInt(),
      dEspacoEntreSecoes: (json['dEspacoEntreSecoes'] as num?)?.toDouble(),
      dRaioSecao: (json['dRaioSecao'] as num?)?.toDouble(),
      dRaioCentral: (json['dRaioCentral'] as num?)?.toDouble(),
      iCorVazioCentral: (json['iCorVazioCentral'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FPaineisRGraficoPizzaToJson(
        FPaineisRGraficoPizza instance) =>
    <String, dynamic>{
      'listaValores': instance.listaValores,
      'iTipoPizza': instance.iTipoPizza,
      'sTituloNome': instance.sTituloNome,
      'oTituloCor': instance.oTituloCor,
      'iTituloExibir': instance.iTituloExibir,
      'iTituloCimaBaixo': instance.iTituloCimaBaixo,
      'listaIndicadoresTexto': instance.listaIndicadoresTexto,
      'listaIndicadoresCor': instance.listaIndicadoresCor,
      'iTamanhoIndicadorNormal': instance.iTamanhoIndicadorNormal,
      'iTamanhoIndicadorExpandido': instance.iTamanhoIndicadorExpandido,
      'corTextoIndicadorNormal': instance.corTextoIndicadorNormal,
      'corTextoIndicadorExpandido': instance.corTextoIndicadorExpandido,
      'listaTituloSecao': instance.listaTituloSecao,
      'dPosicaoTituloSecao': instance.dPosicaoTituloSecao,
      'corDaSecao': instance.corDaSecao,
      'dEspessuraDaSecao': instance.dEspessuraDaSecao,
      'iContornoSecaoEspessura': instance.iContornoSecaoEspessura,
      'iContornoSecaoCor': instance.iContornoSecaoCor,
      'dEspacoEntreSecoes': instance.dEspacoEntreSecoes,
      'dRaioSecao': instance.dRaioSecao,
      'dRaioCentral': instance.dRaioCentral,
      'iCorVazioCentral': instance.iCorVazioCentral,
    };
