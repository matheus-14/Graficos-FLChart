// ignore_for_file: file_names

import 'dart:convert';

import 'FBIPainel.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:fl_chart_test/funcoes/fJson.dart';

part 'FBIPainelPrincipal.g.dart';

@JsonSerializable(explicitToJson: true)
class FBIPainelPrincipal {
  String sTitulo;
  String sObs;
  DateTime tDataInclusao;
  DateTime tDataUltima;
  List<FBIPainel> listaPaineis;

  FBIPainelPrincipal({
    this.sTitulo = "",
    this.sObs = "",
    required this.tDataInclusao,
    required this.tDataUltima,
    required this.listaPaineis,
  });

  FBIPainelPrincipal copyWith({
    String? sTitulo,
    String? sObs,
    DateTime? tDataInclusao,
    DateTime? tDataUltima,
    List<FBIPainel>? listaPaineis,
  }) {
    return FBIPainelPrincipal(
      sTitulo: sTitulo ?? this.sTitulo,
      sObs: sObs ?? this.sObs,
      tDataInclusao: tDataInclusao ?? this.tDataInclusao,
      tDataUltima: tDataUltima ?? this.tDataUltima,
      listaPaineis: listaPaineis ?? this.listaPaineis,
    );
  }

  factory FBIPainelPrincipal.fromJson(Map<String, dynamic> json) => _$FBIPainelPrincipalFromJson(json);
  Map<String, dynamic> toJson() => _$FBIPainelPrincipalToJson(this);

  factory FBIPainelPrincipal.fromJsonString(String jsonS) => FBIPainelPrincipal.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$FBIPainelPrincipalToJson(this), toEncodable: FJson.dataHoraSeralizer);

  static List<FBIPainelPrincipal> lFBIPainelPrincipalFromJson(String str) => List<FBIPainelPrincipal>.from(jsonDecode(str).map((x) => FBIPainelPrincipal.fromJson(x)));
  static List<FBIPainelPrincipal> lFBIPainelPrincipalFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => FBIPainelPrincipal.fromJson(x)).toList();

  static String lFBIPainelPrincipalToJson(List<FBIPainelPrincipal> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}
