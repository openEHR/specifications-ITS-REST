//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FeederAuditDetails {
  /// Returns a new [FeederAuditDetails] instance.
  FeederAuditDetails({
    required this.systemId,
    this.location,
    this.subject,
    this.provider,
    this.time,
    this.versionId,
    this.otherDetails,
  });

  String systemId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PartyIdentified? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PartyProxy? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PartyIdentified? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvDateTime? time;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? versionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ItemStructure? otherDetails;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FeederAuditDetails &&
     other.systemId == systemId &&
     other.location == location &&
     other.subject == subject &&
     other.provider == provider &&
     other.time == time &&
     other.versionId == versionId &&
     other.otherDetails == otherDetails;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (systemId.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (versionId == null ? 0 : versionId!.hashCode) +
    (otherDetails == null ? 0 : otherDetails!.hashCode);

  @override
  String toString() => 'FeederAuditDetails[systemId=$systemId, location=$location, subject=$subject, provider=$provider, time=$time, versionId=$versionId, otherDetails=$otherDetails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'system_id'] = this.systemId;
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.versionId != null) {
      json[r'version_id'] = this.versionId;
    } else {
      json[r'version_id'] = null;
    }
    if (this.otherDetails != null) {
      json[r'other_details'] = this.otherDetails;
    } else {
      json[r'other_details'] = null;
    }
    return json;
  }

  /// Returns a new [FeederAuditDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FeederAuditDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FeederAuditDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FeederAuditDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FeederAuditDetails(
        systemId: mapValueOfType<String>(json, r'system_id')!,
        location: PartyIdentified.fromJson(json[r'location']),
        subject: PartyProxy.fromJson(json[r'subject']),
        provider: PartyIdentified.fromJson(json[r'provider']),
        time: DvDateTime.fromJson(json[r'time']),
        versionId: mapValueOfType<String>(json, r'version_id'),
        otherDetails: ItemStructure.fromJson(json[r'other_details']),
      );
    }
    return null;
  }

  static List<FeederAuditDetails>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FeederAuditDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FeederAuditDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FeederAuditDetails> mapFromJson(dynamic json) {
    final map = <String, FeederAuditDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FeederAuditDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FeederAuditDetails-objects as value to a dart map
  static Map<String, List<FeederAuditDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FeederAuditDetails>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FeederAuditDetails.listFromJson(entry.value, growable: growable,);
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
  };
}

