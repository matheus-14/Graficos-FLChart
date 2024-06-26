import 'dart:convert';

import 'paineis.dart';
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';

part 'painelPrincipal.g.dart';

@JsonSerializable(explicitToJson: true)
class Painelprincipal {
  String titulo;
  String observacoes;
  List<Paineis> listaPaineis;
  // filtro data
  // filtros M
  // filtros especiais
  // filtro manual T

  Painelprincipal({
    this.titulo = "",
    this.observacoes = "",
    required this.listaPaineis,
  });

  Painelprincipal copyWith({
    String? titulo,
    String? observacoes,
    String? camposValor,
    String? ordem,
    List<Paineis>? listaPaineis,
  }) {
    return Painelprincipal(
      titulo: titulo ?? this.titulo,
      observacoes: observacoes ?? this.observacoes,
      listaPaineis: listaPaineis ?? this.listaPaineis,
    );
  }

  factory Painelprincipal.fromJson(Map<String, dynamic> json) => _$PainelprincipalFromJson(json);
  Map<String, dynamic> toJson() => _$PainelprincipalToJson(this);

  factory Painelprincipal.fromJsonString(String jsonS) => Painelprincipal.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$PainelprincipalToJson(this), toEncodable: FJson.dataHoraSeralizer);

  static List<Painelprincipal> lPainelprincipalFromJson(String str) => List<Painelprincipal>.from(jsonDecode(str).map((x) => Painelprincipal.fromJson(x)));
  static List<Painelprincipal> lPainelprincipalFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => Painelprincipal.fromJson(x)).toList();

  static String lPainelprincipalToJson(List<Painelprincipal> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}
