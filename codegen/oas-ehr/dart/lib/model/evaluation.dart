//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Evaluation {
  /// Returns a new [Evaluation] instance.
  Evaluation({
    this.type = 'EVALUATION',
    required this.data,
  });

  String type;

  ItemStructure data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Evaluation &&
     other.type == type &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'Evaluation[type=$type, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [Evaluation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Evaluation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Evaluation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Evaluation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Evaluation(
        type: mapValueOfType<String>(json, r'_type') ?? 'EVALUATION',
        data: ItemStructure.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<Evaluation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Evaluation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Evaluation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Evaluation> mapFromJson(dynamic json) {
    final map = <String, Evaluation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Evaluation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Evaluation-objects as value to a dart map
  static Map<String, List<Evaluation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Evaluation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Evaluation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

