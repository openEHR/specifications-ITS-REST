//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ObjectVersionId {
  /// Returns a new [ObjectVersionId] instance.
  ObjectVersionId({
    required this.value,
    this.type,
  });

  String value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ObjectVersionId &&
     other.value == value &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'ObjectVersionId[value=$value, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'value'] = this.value;
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    return json;
  }

  /// Returns a new [ObjectVersionId] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ObjectVersionId? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ObjectVersionId[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ObjectVersionId[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ObjectVersionId(
        value: mapValueOfType<String>(json, r'value')!,
        type: mapValueOfType<String>(json, r'_type'),
      );
    }
    return null;
  }

  static List<ObjectVersionId>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ObjectVersionId>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ObjectVersionId.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ObjectVersionId> mapFromJson(dynamic json) {
    final map = <String, ObjectVersionId>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ObjectVersionId.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ObjectVersionId-objects as value to a dart map
  static Map<String, List<ObjectVersionId>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ObjectVersionId>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ObjectVersionId.listFromJson(entry.value, growable: growable,);
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
  };
}

