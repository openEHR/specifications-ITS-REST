//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvQuantified {
  /// Returns a new [DvQuantified] instance.
  DvQuantified({
    this.type = 'DV_QUANTIFIED',
    this.magnitudeStatus = '=',
  });

  String type;

  String magnitudeStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvQuantified &&
     other.type == type &&
     other.magnitudeStatus == magnitudeStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (magnitudeStatus.hashCode);

  @override
  String toString() => 'DvQuantified[type=$type, magnitudeStatus=$magnitudeStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'magnitude_status'] = this.magnitudeStatus;
    return json;
  }

  /// Returns a new [DvQuantified] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvQuantified? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvQuantified[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvQuantified[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvQuantified(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_QUANTIFIED',
        magnitudeStatus: mapValueOfType<String>(json, r'magnitude_status') ?? '=',
      );
    }
    return null;
  }

  static List<DvQuantified>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvQuantified>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvQuantified.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvQuantified> mapFromJson(dynamic json) {
    final map = <String, DvQuantified>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvQuantified.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvQuantified-objects as value to a dart map
  static Map<String, List<DvQuantified>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvQuantified>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvQuantified.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

