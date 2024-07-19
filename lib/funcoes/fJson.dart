// ignore_for_file: non_constant_identifier_names, file_names

import 'package:json_annotation/json_annotation.dart';

class FJson {
  static dynamic dataHoraToJson(dynamic object) => object is DateTime ? object.toIso8601String() : object;
  static DateTime? dataFromJson(dynamic json) => json == null || json is DateTime
      ? json
      : json == ""
          ? null
          : DateTime.parse(json);
}

class CustomDateTimeConverter implements JsonConverter<dynamic, String> {
  const CustomDateTimeConverter();

  @override
  DateTime fromJson(dynamic json) {
    // if (json is DateTime) {
    //   return json;
    // }

    // return json is DateTime ? json : DateTime.parse(json);
    return json is DateTime ? json : DateTime.parse(json);
  }

  @override
  String toJson(dynamic json) {
    // if (json is DateTime) {
    //   return json.toIso8601String();
    // }

    return json is DateTime ? json.toIso8601String() : json;
  }

  static DateTime? dataFromJson(dynamic json) {
    // if (json is DateTime) {
    //   return json;
    // }

    return json == null || json is DateTime ? json : DateTime.parse(json);
  }

  static String? dataToJson(dynamic json) {
    // if (json is DateTime) {
    //   return json.toIso8601String();
    // }

    return json is DateTime ? json.toIso8601String() : json;
  }
}
