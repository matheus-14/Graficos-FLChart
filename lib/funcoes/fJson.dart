// ignore_for_file: non_constant_identifier_names, file_names

import 'package:json_annotation/json_annotation.dart';

class FJson {
  static dynamic dataHoraSeralizer(dynamic object) {
    if (object is DateTime) {
      return object.toIso8601String();
    }
    return object;
  }
}

class CustomDateTimeConverter implements JsonConverter<DateTime, String> {
  const CustomDateTimeConverter();

  @override
  DateTime fromJson(dynamic json) {
    if (json is DateTime) {
      return json;
    }

    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime json) => json.toIso8601String();
}
