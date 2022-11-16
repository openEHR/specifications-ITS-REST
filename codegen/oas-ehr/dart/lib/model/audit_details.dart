//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditDetails {
  /// Returns a new [AuditDetails] instance.
  AuditDetails({
    this.type = 'AUDIT_DETAILS',
    required this.systemId,
    required this.timeCommitted,
    required this.changeType,
    this.description,
    required this.committer,
  });

  String type;

  String systemId;

  DvDateTime timeCommitted;

  DvCodedText changeType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvText? description;

  PartyProxy committer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditDetails &&
     other.type == type &&
     other.systemId == systemId &&
     other.timeCommitted == timeCommitted &&
     other.changeType == changeType &&
     other.description == description &&
     other.committer == committer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (systemId.hashCode) +
    (timeCommitted.hashCode) +
    (changeType.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (committer.hashCode);

  @override
  String toString() => 'AuditDetails[type=$type, systemId=$systemId, timeCommitted=$timeCommitted, changeType=$changeType, description=$description, committer=$committer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'system_id'] = this.systemId;
      json[r'time_committed'] = this.timeCommitted;
      json[r'change_type'] = this.changeType;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'committer'] = this.committer;
    return json;
  }

  /// Returns a new [AuditDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuditDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuditDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditDetails(
        type: mapValueOfType<String>(json, r'_type') ?? 'AUDIT_DETAILS',
        systemId: mapValueOfType<String>(json, r'system_id')!,
        timeCommitted: DvDateTime.fromJson(json[r'time_committed'])!,
        changeType: DvCodedText.fromJson(json[r'change_type'])!,
        description: DvText.fromJson(json[r'description']),
        committer: PartyProxy.fromJson(json[r'committer'])!,
      );
    }
    return null;
  }

  static List<AuditDetails>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditDetails> mapFromJson(dynamic json) {
    final map = <String, AuditDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditDetails-objects as value to a dart map
  static Map<String, List<AuditDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuditDetails>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditDetails.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'system_id',
    'time_committed',
    'change_type',
    'committer',
  };
}

