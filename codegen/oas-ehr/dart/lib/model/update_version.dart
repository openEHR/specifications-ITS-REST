//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateVersion {
  /// Returns a new [UpdateVersion] instance.
  UpdateVersion({
    this.precedingVersionUid,
    this.signature,
    required this.lifecycleState,
    this.attestations = const [],
    required this.data,
    required this.commitAudit,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ObjectVersionId? precedingVersionUid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signature;

  TerminologyCode lifecycleState;

  List<UpdateAttestation> attestations;

  Versionable data;

  UpdateAudit commitAudit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateVersion &&
    other.precedingVersionUid == precedingVersionUid &&
    other.signature == signature &&
    other.lifecycleState == lifecycleState &&
    _deepEquality.equals(other.attestations, attestations) &&
    other.data == data &&
    other.commitAudit == commitAudit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (precedingVersionUid == null ? 0 : precedingVersionUid!.hashCode) +
    (signature == null ? 0 : signature!.hashCode) +
    (lifecycleState.hashCode) +
    (attestations.hashCode) +
    (data.hashCode) +
    (commitAudit.hashCode);

  @override
  String toString() => 'UpdateVersion[precedingVersionUid=$precedingVersionUid, signature=$signature, lifecycleState=$lifecycleState, attestations=$attestations, data=$data, commitAudit=$commitAudit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.precedingVersionUid != null) {
      json[r'preceding_version_uid'] = this.precedingVersionUid;
    } else {
      json[r'preceding_version_uid'] = null;
    }
    if (this.signature != null) {
      json[r'signature'] = this.signature;
    } else {
      json[r'signature'] = null;
    }
      json[r'lifecycle_state'] = this.lifecycleState;
      json[r'attestations'] = this.attestations;
      json[r'data'] = this.data;
      json[r'commit_audit'] = this.commitAudit;
    return json;
  }

  /// Returns a new [UpdateVersion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateVersion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateVersion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateVersion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateVersion(
        precedingVersionUid: ObjectVersionId.fromJson(json[r'preceding_version_uid']),
        signature: mapValueOfType<String>(json, r'signature'),
        lifecycleState: TerminologyCode.fromJson(json[r'lifecycle_state'])!,
        attestations: UpdateAttestation.listFromJson(json[r'attestations']),
        data: Versionable.fromJson(json[r'data'])!,
        commitAudit: UpdateAudit.fromJson(json[r'commit_audit'])!,
      );
    }
    return null;
  }

  static List<UpdateVersion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateVersion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateVersion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateVersion> mapFromJson(dynamic json) {
    final map = <String, UpdateVersion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateVersion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateVersion-objects as value to a dart map
  static Map<String, List<UpdateVersion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateVersion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateVersion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lifecycle_state',
    'data',
    'commit_audit',
  };
}

