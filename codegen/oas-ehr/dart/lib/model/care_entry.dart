//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CareEntry {
  /// Returns a new [CareEntry] instance.
  CareEntry({
    this.protocol,
    this.guidelineId,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ItemStructure? protocol;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ObjectRef? guidelineId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CareEntry &&
     other.protocol == protocol &&
     other.guidelineId == guidelineId &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (protocol == null ? 0 : protocol!.hashCode) +
    (guidelineId == null ? 0 : guidelineId!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'CareEntry[protocol=$protocol, guidelineId=$guidelineId, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.protocol != null) {
      json[r'protocol'] = this.protocol;
    } else {
      json[r'protocol'] = null;
    }
    if (this.guidelineId != null) {
      json[r'guideline_id'] = this.guidelineId;
    } else {
      json[r'guideline_id'] = null;
    }
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    return json;
  }

  /// Returns a new [CareEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CareEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CareEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CareEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CareEntry(
        protocol: ItemStructure.fromJson(json[r'protocol']),
        guidelineId: ObjectRef.fromJson(json[r'guideline_id']),
        type: mapValueOfType<String>(json, r'_type'),
      );
    }
    return null;
  }

  static List<CareEntry>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CareEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CareEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CareEntry> mapFromJson(dynamic json) {
    final map = <String, CareEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CareEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CareEntry-objects as value to a dart map
  static Map<String, List<CareEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CareEntry>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CareEntry.listFromJson(entry.value, growable: growable,);
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

