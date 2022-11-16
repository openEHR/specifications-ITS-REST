//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvIdentifier {
  /// Returns a new [DvIdentifier] instance.
  DvIdentifier({
    this.issuer,
    this.assigner,
    required this.id,
    this.type,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assigner;

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvIdentifier &&
     other.issuer == issuer &&
     other.assigner == assigner &&
     other.id == id &&
     other.type == type &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (issuer == null ? 0 : issuer!.hashCode) +
    (assigner == null ? 0 : assigner!.hashCode) +
    (id.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'DvIdentifier[issuer=$issuer, assigner=$assigner, id=$id, type=$type, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.issuer != null) {
      json[r'issuer'] = this.issuer;
    } else {
      json[r'issuer'] = null;
    }
    if (this.assigner != null) {
      json[r'assigner'] = this.assigner;
    } else {
      json[r'assigner'] = null;
    }
      json[r'id'] = this.id;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    return json;
  }

  /// Returns a new [DvIdentifier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvIdentifier? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvIdentifier[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvIdentifier[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvIdentifier(
        issuer: mapValueOfType<String>(json, r'issuer'),
        assigner: mapValueOfType<String>(json, r'assigner'),
        id: mapValueOfType<String>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type'),
        type: mapValueOfType<String>(json, r'_type'),
      );
    }
    return null;
  }

  static List<DvIdentifier>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvIdentifier>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvIdentifier.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvIdentifier> mapFromJson(dynamic json) {
    final map = <String, DvIdentifier>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvIdentifier.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvIdentifier-objects as value to a dart map
  static Map<String, List<DvIdentifier>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvIdentifier>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvIdentifier.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

