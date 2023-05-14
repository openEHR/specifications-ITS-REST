//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvIntervalOfDateTime {
  /// Returns a new [DvIntervalOfDateTime] instance.
  DvIntervalOfDateTime({
    this.type = 'DV_INTERVAL',
    this.lower,
    this.upper,
  });

  String type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvDateTime? lower;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvDateTime? upper;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvIntervalOfDateTime &&
     other.type == type &&
     other.lower == lower &&
     other.upper == upper;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (lower == null ? 0 : lower!.hashCode) +
    (upper == null ? 0 : upper!.hashCode);

  @override
  String toString() => 'DvIntervalOfDateTime[type=$type, lower=$lower, upper=$upper]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
    if (this.lower != null) {
      json[r'lower'] = this.lower;
    } else {
      json[r'lower'] = null;
    }
    if (this.upper != null) {
      json[r'upper'] = this.upper;
    } else {
      json[r'upper'] = null;
    }
    return json;
  }

  /// Returns a new [DvIntervalOfDateTime] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvIntervalOfDateTime? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvIntervalOfDateTime[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvIntervalOfDateTime[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvIntervalOfDateTime(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_INTERVAL',
        lower: DvDateTime.fromJson(json[r'lower']),
        upper: DvDateTime.fromJson(json[r'upper']),
      );
    }
    return null;
  }

  static List<DvIntervalOfDateTime> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvIntervalOfDateTime>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvIntervalOfDateTime.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvIntervalOfDateTime> mapFromJson(dynamic json) {
    final map = <String, DvIntervalOfDateTime>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvIntervalOfDateTime.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvIntervalOfDateTime-objects as value to a dart map
  static Map<String, List<DvIntervalOfDateTime>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvIntervalOfDateTime>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DvIntervalOfDateTime.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

