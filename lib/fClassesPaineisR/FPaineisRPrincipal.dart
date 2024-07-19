// ignore_for_file: file_names

import 'dart:convert';

import 'FPaineisRPainel.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:fl_chart_test/funcoes/fJson.dart';

part 'FPaineisRPrincipal.g.dart';

@JsonSerializable(explicitToJson: true)
class FPaineisRPrincipal {
  String sTitulo;
  String sObs;
  DateTime? tDataInclusao;
  DateTime? tDataUltima;
  List<FPaineisRPainel>? listaPaineis;

  FPaineisRPrincipal({
    this.sTitulo = "Painéis de Resultados",
    this.sObs = "",
    this.tDataInclusao,
    this.tDataUltima,
    this.listaPaineis,
  });

  FPaineisRPrincipal copyWith({
    String? sTitulo,
    String? sObs,
    DateTime? tDataInclusao,
    DateTime? tDataUltima,
    List<FPaineisRPainel>? listaPaineis,
  }) {
    return FPaineisRPrincipal(
      sTitulo: sTitulo ?? this.sTitulo,
      sObs: sObs ?? this.sObs,
      tDataInclusao: tDataInclusao ?? this.tDataInclusao,
      tDataUltima: tDataUltima ?? this.tDataUltima,
      listaPaineis: listaPaineis ?? this.listaPaineis,
    );
  }

  factory FPaineisRPrincipal.fromJson(Map<String, dynamic> json) => _$FPaineisRPrincipalFromJson(json);
  Map<String, dynamic> toJson() => _$FPaineisRPrincipalToJson(this);

  factory FPaineisRPrincipal.fromJsonString(String jsonS) => FPaineisRPrincipal.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$FPaineisRPrincipalToJson(this), toEncodable: FJson.dataHoraToJson);

  static List<FPaineisRPrincipal> lFPaineisRPrincipalFromJson(String str) => List<FPaineisRPrincipal>.from(jsonDecode(str).map((x) => FPaineisRPrincipal.fromJson(x)));
  static List<FPaineisRPrincipal> lFPaineisRPrincipalFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => FPaineisRPrincipal.fromJson(x)).toList();

  static String lFPaineisRPrincipalToJson(List<FPaineisRPrincipal> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraToJson);
}
