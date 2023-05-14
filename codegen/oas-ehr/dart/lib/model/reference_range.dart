//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReferenceRange {
  /// Returns a new [ReferenceRange] instance.
  ReferenceRange({
    required this.meaning,
    required this.range,
  });

  DvText meaning;

  DvInterval range;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenceRange &&
     other.meaning == meaning &&
     other.range == range;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (meaning.hashCode) +
    (range.hashCode);

  @override
  String toString() => 'ReferenceRange[meaning=$meaning, range=$range]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'meaning'] = this.meaning;
      json[r'range'] = this.range;
    return json;
  }

  /// Returns a new [ReferenceRange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenceRange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferenceRange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferenceRange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferenceRange(
        meaning: DvText.fromJson(json[r'meaning'])!,
        range: DvInterval.fromJson(json[r'range'])!,
      );
    }
    return null;
  }

  static List<ReferenceRange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenceRange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenceRange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenceRange> mapFromJson(dynamic json) {
    final map = <String, ReferenceRange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenceRange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenceRange-objects as value to a dart map
  static Map<String, List<ReferenceRange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenceRange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenceRange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'meaning',
    'range',
  };
}

