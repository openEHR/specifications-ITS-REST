//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvTemporal {
  /// Returns a new [DvTemporal] instance.
  DvTemporal({
    this.type = 'DV_TEMPORAL',
    this.accuracy,
  });

  String type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvDuration? accuracy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvTemporal &&
    other.type == type &&
    other.accuracy == accuracy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (accuracy == null ? 0 : accuracy!.hashCode);

  @override
  String toString() => 'DvTemporal[type=$type, accuracy=$accuracy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
    if (this.accuracy != null) {
      json[r'accuracy'] = this.accuracy;
    } else {
      json[r'accuracy'] = null;
    }
    return json;
  }

  /// Returns a new [DvTemporal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvTemporal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvTemporal[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvTemporal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvTemporal(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_TEMPORAL',
        accuracy: DvDuration.fromJson(json[r'accuracy']),
      );
    }
    return null;
  }

  static List<DvTemporal> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvTemporal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvTemporal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvTemporal> mapFromJson(dynamic json) {
    final map = <String, DvTemporal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvTemporal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvTemporal-objects as value to a dart map
  static Map<String, List<DvTemporal>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvTemporal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DvTemporal.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

