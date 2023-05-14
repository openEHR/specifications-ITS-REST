//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvInterval {
  /// Returns a new [DvInterval] instance.
  DvInterval({
    this.type = 'DV_INTERVAL',
    required this.lowerUnbounded,
    required this.upperUnbounded,
    required this.lowerIncluded,
    required this.upperIncluded,
  });

  String type;

  bool lowerUnbounded;

  bool upperUnbounded;

  bool lowerIncluded;

  bool upperIncluded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvInterval &&
     other.type == type &&
     other.lowerUnbounded == lowerUnbounded &&
     other.upperUnbounded == upperUnbounded &&
     other.lowerIncluded == lowerIncluded &&
     other.upperIncluded == upperIncluded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (lowerUnbounded.hashCode) +
    (upperUnbounded.hashCode) +
    (lowerIncluded.hashCode) +
    (upperIncluded.hashCode);

  @override
  String toString() => 'DvInterval[type=$type, lowerUnbounded=$lowerUnbounded, upperUnbounded=$upperUnbounded, lowerIncluded=$lowerIncluded, upperIncluded=$upperIncluded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'lower_unbounded'] = this.lowerUnbounded;
      json[r'upper_unbounded'] = this.upperUnbounded;
      json[r'lower_included'] = this.lowerIncluded;
      json[r'upper_included'] = this.upperIncluded;
    return json;
  }

  /// Returns a new [DvInterval] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvInterval? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvInterval[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvInterval[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvInterval(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_INTERVAL',
        lowerUnbounded: mapValueOfType<bool>(json, r'lower_unbounded')!,
        upperUnbounded: mapValueOfType<bool>(json, r'upper_unbounded')!,
        lowerIncluded: mapValueOfType<bool>(json, r'lower_included')!,
        upperIncluded: mapValueOfType<bool>(json, r'upper_included')!,
      );
    }
    return null;
  }

  static List<DvInterval> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvInterval>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvInterval.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvInterval> mapFromJson(dynamic json) {
    final map = <String, DvInterval>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvInterval.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvInterval-objects as value to a dart map
  static Map<String, List<DvInterval>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvInterval>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DvInterval.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lower_unbounded',
    'upper_unbounded',
    'lower_included',
    'upper_included',
  };
}

