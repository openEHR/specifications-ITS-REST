//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvParsable {
  /// Returns a new [DvParsable] instance.
  DvParsable({
    this.type = 'DV_PARSABLE',
    required this.value,
    required this.formalism,
  });

  String type;

  String value;

  String formalism;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvParsable &&
     other.type == type &&
     other.value == value &&
     other.formalism == formalism;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (value.hashCode) +
    (formalism.hashCode);

  @override
  String toString() => 'DvParsable[type=$type, value=$value, formalism=$formalism]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'value'] = this.value;
      json[r'formalism'] = this.formalism;
    return json;
  }

  /// Returns a new [DvParsable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvParsable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvParsable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvParsable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvParsable(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_PARSABLE',
        value: mapValueOfType<String>(json, r'value')!,
        formalism: mapValueOfType<String>(json, r'formalism')!,
      );
    }
    return null;
  }

  static List<DvParsable>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvParsable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvParsable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvParsable> mapFromJson(dynamic json) {
    final map = <String, DvParsable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvParsable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvParsable-objects as value to a dart map
  static Map<String, List<DvParsable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvParsable>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvParsable.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'value',
    'formalism',
  };
}

