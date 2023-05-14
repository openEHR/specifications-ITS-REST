//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Ehr {
  /// Returns a new [Ehr] instance.
  Ehr({
    this.systemId,
    this.ehrId,
    this.ehrStatus,
    this.ehrAccess,
    this.timeCreated,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HierObjectId? systemId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HierObjectId? ehrId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ObjectRef? ehrStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ObjectRef? ehrAccess;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvDateTime? timeCreated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Ehr &&
     other.systemId == systemId &&
     other.ehrId == ehrId &&
     other.ehrStatus == ehrStatus &&
     other.ehrAccess == ehrAccess &&
     other.timeCreated == timeCreated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (systemId == null ? 0 : systemId!.hashCode) +
    (ehrId == null ? 0 : ehrId!.hashCode) +
    (ehrStatus == null ? 0 : ehrStatus!.hashCode) +
    (ehrAccess == null ? 0 : ehrAccess!.hashCode) +
    (timeCreated == null ? 0 : timeCreated!.hashCode);

  @override
  String toString() => 'Ehr[systemId=$systemId, ehrId=$ehrId, ehrStatus=$ehrStatus, ehrAccess=$ehrAccess, timeCreated=$timeCreated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.systemId != null) {
      json[r'system_id'] = this.systemId;
    } else {
      json[r'system_id'] = null;
    }
    if (this.ehrId != null) {
      json[r'ehr_id'] = this.ehrId;
    } else {
      json[r'ehr_id'] = null;
    }
    if (this.ehrStatus != null) {
      json[r'ehr_status'] = this.ehrStatus;
    } else {
      json[r'ehr_status'] = null;
    }
    if (this.ehrAccess != null) {
      json[r'ehr_access'] = this.ehrAccess;
    } else {
      json[r'ehr_access'] = null;
    }
    if (this.timeCreated != null) {
      json[r'time_created'] = this.timeCreated;
    } else {
      json[r'time_created'] = null;
    }
    return json;
  }

  /// Returns a new [Ehr] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Ehr? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Ehr[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Ehr[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Ehr(
        systemId: HierObjectId.fromJson(json[r'system_id']),
        ehrId: HierObjectId.fromJson(json[r'ehr_id']),
        ehrStatus: ObjectRef.fromJson(json[r'ehr_status']),
        ehrAccess: ObjectRef.fromJson(json[r'ehr_access']),
        timeCreated: DvDateTime.fromJson(json[r'time_created']),
      );
    }
    return null;
  }

  static List<Ehr> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Ehr>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Ehr.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Ehr> mapFromJson(dynamic json) {
    final map = <String, Ehr>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Ehr.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Ehr-objects as value to a dart map
  static Map<String, List<Ehr>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Ehr>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Ehr.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

