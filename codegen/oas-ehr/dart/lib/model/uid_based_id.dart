//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UidBasedId {
  /// Returns a new [UidBasedId] instance.
  UidBasedId({
    this.type = 'UID_BASED_ID',
    required this.value,
  });

  String type;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UidBasedId &&
    other.type == type &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'UidBasedId[type=$type, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [UidBasedId] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UidBasedId? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UidBasedId[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UidBasedId[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UidBasedId(
        type: mapValueOfType<String>(json, r'_type') ?? 'UID_BASED_ID',
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<UidBasedId> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UidBasedId>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UidBasedId.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UidBasedId> mapFromJson(dynamic json) {
    final map = <String, UidBasedId>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UidBasedId.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UidBasedId-objects as value to a dart map
  static Map<String, List<UidBasedId>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UidBasedId>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UidBasedId.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'value',
  };
}

