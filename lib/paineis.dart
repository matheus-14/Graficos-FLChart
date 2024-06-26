import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';

part 'paineis.g.dart';

@JsonSerializable(explicitToJson: true)
class Paineis {
  String titulo;
  String observacao;
  String tipoGrafico;
  String tabela;
  // group by
  // camposValor
  // ordem

  Paineis({
    this.titulo = "",
    this.observacao = "",
    this.tipoGrafico = "",
    this.tabela = "",
  });
  
  Paineis copyWith({
    String? titulo,
    String? observacao,
    String? tipoGrafico,
    String? tabela,
  }) {
    return Paineis(
      titulo: titulo ?? this.titulo,
      observacao: observacao ?? this.observacao,
      tipoGrafico: tipoGrafico ?? this.tipoGrafico,
      tabela: tabela ?? this.tabela,
    );
  }

  factory Paineis.fromJson(Map<String, dynamic> json) => _$PaineisFromJson(json);
  Map<String, dynamic> toJson() => _$PaineisToJson(this);

  factory Paineis.fromJsonString(String jsonS) => Paineis.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$PaineisToJson(this), toEncodable: FJson.dataHoraSeralizer);

  static List<Paineis> lPaineisFromJson(String str) => List<Paineis>.from(jsonDecode(str).map((x) => Paineis.fromJson(x)));
  static List<Paineis> lPaineisFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => Paineis.fromJson(x)).toList();

  static String lPaineisToJson(List<Paineis> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);


}
