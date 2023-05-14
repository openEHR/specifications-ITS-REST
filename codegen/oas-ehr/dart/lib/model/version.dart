//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Version {
  /// Returns a new [Version] instance.
  Version({
    this.type,
    required this.contribution,
    this.signature,
    required this.commitAudit,
    required this.data,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ObjectRef contribution;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signature;

  AuditDetails commitAudit;

  Versionable data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Version &&
     other.type == type &&
     other.contribution == contribution &&
     other.signature == signature &&
     other.commitAudit == commitAudit &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (contribution.hashCode) +
    (signature == null ? 0 : signature!.hashCode) +
    (commitAudit.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'Version[type=$type, contribution=$contribution, signature=$signature, commitAudit=$commitAudit, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
      json[r'contribution'] = this.contribution;
    if (this.signature != null) {
      json[r'signature'] = this.signature;
    } else {
      json[r'signature'] = null;
    }
      json[r'commit_audit'] = this.commitAudit;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [Version] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Version? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Version[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Version[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Version(
        type: mapValueOfType<String>(json, r'_type'),
        contribution: ObjectRef.fromJson(json[r'contribution'])!,
        signature: mapValueOfType<String>(json, r'signature'),
        commitAudit: AuditDetails.fromJson(json[r'commit_audit'])!,
        data: Versionable.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<Version> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Version>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Version.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Version> mapFromJson(dynamic json) {
    final map = <String, Version>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Version.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Version-objects as value to a dart map
  static Map<String, List<Version>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Version>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Version.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contribution',
    'commit_audit',
    'data',
  };
}

