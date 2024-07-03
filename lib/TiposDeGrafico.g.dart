// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TiposDeGrafico.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraficoTipoLinha _$GraficoTipoLinhaFromJson(Map<String, dynamic> json) =>
    GraficoTipoLinha(
      iEscalaX: (json['iEscalaX'] as num).toInt(),
      iEscalaY: (json['iEscalaY'] as num).toInt(),
      sSubtipoGrafico: json['sSubtipoGrafico'] as String,
      bIsCurved: json['bIsCurved'] as bool,
      bIsStepped: json['bIsStepped'] as bool,
      bMostarGrid: json['bMostarGrid'] as bool,
      bPreencherArea: json['bPreencherArea'] as bool,
      iEspessuraLinha: (json['iEspessuraLinha'] as num).toInt(),
      bMostrarTitulos: json['bMostrarTitulos'] as bool,
      iPosicaoTitulos: (json['iPosicaoTitulos'] as num).toInt(),
      sPosicaoLegenda: json['sPosicaoLegenda'] as String,
      bMostrarBorda: json['bMostrarBorda'] as bool,
      bMostrarSombraLinha: json['bMostrarSombraLinha'] as bool,
    );

Map<String, dynamic> _$GraficoTipoLinhaToJson(GraficoTipoLinha instance) =>
    <String, dynamic>{
      'iEscalaX': instance.iEscalaX,
      'iEscalaY': instance.iEscalaY,
      'sSubtipoGrafico': instance.sSubtipoGrafico,
      'bIsCurved': instance.bIsCurved,
      'bIsStepped': instance.bIsStepped,
      'bMostarGrid': instance.bMostarGrid,
      'bPreencherArea': instance.bPreencherArea,
      'iEspessuraLinha': instance.iEspessuraLinha,
      'bMostrarTitulos': instance.bMostrarTitulos,
      'iPosicaoTitulos': instance.iPosicaoTitulos,
      'sPosicaoLegenda': instance.sPosicaoLegenda,
      'bMostrarBorda': instance.bMostrarBorda,
      'bMostrarSombraLinha': instance.bMostrarSombraLinha,
    };

GraficoTipoBarra _$GraficoTipoBarraFromJson(Map<String, dynamic> json) =>
    GraficoTipoBarra(
      bIsColunas: json['bIsColunas'] as bool,
      iEspessuraBarra: (json['iEspessuraBarra'] as num).toInt(),
      listaTamanhoBarras: (json['listaTamanhoBarras'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      dEspacoEntreBarras: (json['dEspacoEntreBarras'] as num).toDouble(),
      bIsEmpilhada: json['bIsEmpilhada'] as bool,
      bMostrarTitulos: json['bMostrarTitulos'] as bool,
      iPosicaoTitulos: (json['iPosicaoTitulos'] as num).toInt(),
      bMostarGrid: json['bMostarGrid'] as bool,
      bTouchTooltip: json['bTouchTooltip'] as bool,
      tooltipPosition: json['tooltipPosition'] as String,
    );

Map<String, dynamic> _$GraficoTipoBarraToJson(GraficoTipoBarra instance) =>
    <String, dynamic>{
      'bIsColunas': instance.bIsColunas,
      'iEspessuraBarra': instance.iEspessuraBarra,
      'listaTamanhoBarras': instance.listaTamanhoBarras,
      'dEspacoEntreBarras': instance.dEspacoEntreBarras,
      'bIsEmpilhada': instance.bIsEmpilhada,
      'bMostrarTitulos': instance.bMostrarTitulos,
      'iPosicaoTitulos': instance.iPosicaoTitulos,
      'bMostarGrid': instance.bMostarGrid,
      'bTouchTooltip': instance.bTouchTooltip,
      'tooltipPosition': instance.tooltipPosition,
    };

GraficoTipoPizza _$GraficoTipoPizzaFromJson(Map<String, dynamic> json) =>
    GraficoTipoPizza(
      dPosicaoTituloSecao: (json['dPosicaoTituloSecao'] as num).toDouble(),
      dEspessuraSecao: (json['dEspessuraSecao'] as num).toDouble(),
      dEspacoEntreSecoes: (json['dEspacoEntreSecoes'] as num).toDouble(),
      dEspessuraContornoSecao:
          (json['dEspessuraContornoSecao'] as num).toDouble(),
      dRaioVazioCentral: (json['dRaioVazioCentral'] as num).toDouble(),
      dRaioMaximo: (json['dRaioMaximo'] as num).toDouble(),
    );

Map<String, dynamic> _$GraficoTipoPizzaToJson(GraficoTipoPizza instance) =>
    <String, dynamic>{
      'dPosicaoTituloSecao': instance.dPosicaoTituloSecao,
      'dEspessuraSecao': instance.dEspessuraSecao,
      'dEspacoEntreSecoes': instance.dEspacoEntreSecoes,
      'dEspessuraContornoSecao': instance.dEspessuraContornoSecao,
      'dRaioVazioCentral': instance.dRaioVazioCentral,
      'dRaioMaximo': instance.dRaioMaximo,
    };

GraficoTipoDispersao _$GraficoTipoDispersaoFromJson(
        Map<String, dynamic> json) =>
    GraficoTipoDispersao(
      iEscalaX: (json['iEscalaX'] as num).toInt(),
      iEscalaY: (json['iEscalaY'] as num).toInt(),
      dRaioDosPontos: (json['dRaioDosPontos'] as num).toDouble(),
      sTitulo: json['sTitulo'] as String,
      iPosicaoTitulos: json['iPosicaoTitulos'] as String,
      bTouchData: json['bTouchData'] as bool,
      bTooltip: json['bTooltip'] as bool,
      bMostarGrid: json['bMostarGrid'] as bool,
    );

Map<String, dynamic> _$GraficoTipoDispersaoToJson(
        GraficoTipoDispersao instance) =>
    <String, dynamic>{
      'iEscalaX': instance.iEscalaX,
      'iEscalaY': instance.iEscalaY,
      'dRaioDosPontos': instance.dRaioDosPontos,
      'sTitulo': instance.sTitulo,
      'iPosicaoTitulos': instance.iPosicaoTitulos,
      'bTouchData': instance.bTouchData,
      'bTooltip': instance.bTooltip,
      'bMostarGrid': instance.bMostarGrid,
    };

GraficoTipoRadar _$GraficoTipoRadarFromJson(Map<String, dynamic> json) =>
    GraficoTipoRadar(
      listaPontosDoSet: (json['listaPontosDoSet'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      sTitulo: json['sTitulo'] as String,
      iPosicaoTitulos: (json['iPosicaoTitulos'] as num).toInt(),
      distanciaTituloBordaRadar:
          (json['distanciaTituloBordaRadar'] as num).toDouble(),
      formatoCircular: json['formatoCircular'] as bool,
      espessuraBorda: (json['espessuraBorda'] as num).toDouble(),
      quantidadeDeTicks: (json['quantidadeDeTicks'] as num).toInt(),
      tamanhoDescricaoTicks: (json['tamanhoDescricaoTicks'] as num).toDouble(),
    );

Map<String, dynamic> _$GraficoTipoRadarToJson(GraficoTipoRadar instance) =>
    <String, dynamic>{
      'listaPontosDoSet': instance.listaPontosDoSet,
      'sTitulo': instance.sTitulo,
      'iPosicaoTitulos': instance.iPosicaoTitulos,
      'distanciaTituloBordaRadar': instance.distanciaTituloBordaRadar,
      'formatoCircular': instance.formatoCircular,
      'espessuraBorda': instance.espessuraBorda,
      'quantidadeDeTicks': instance.quantidadeDeTicks,
      'tamanhoDescricaoTicks': instance.tamanhoDescricaoTicks,
    };