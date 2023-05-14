//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImportedVersion {
  /// Returns a new [ImportedVersion] instance.
  ImportedVersion({
    this.type = 'IMPORTED_VERSION',
    required this.item,
    required this.contribution,
    this.signature,
    required this.commitAudit,
    required this.data,
  });

  String type;

  OriginalVersion item;

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
  bool operator ==(Object other) => identical(this, other) || other is ImportedVersion &&
     other.type == type &&
     other.item == item &&
     other.contribution == contribution &&
     other.signature == signature &&
     other.commitAudit == commitAudit &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (item.hashCode) +
    (contribution.hashCode) +
    (signature == null ? 0 : signature!.hashCode) +
    (commitAudit.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ImportedVersion[type=$type, item=$item, contribution=$contribution, signature=$signature, commitAudit=$commitAudit, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'item'] = this.item;
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

  /// Returns a new [ImportedVersion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportedVersion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportedVersion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportedVersion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportedVersion(
        type: mapValueOfType<String>(json, r'_type') ?? 'IMPORTED_VERSION',
        item: OriginalVersion.fromJson(json[r'item'])!,
        contribution: ObjectRef.fromJson(json[r'contribution'])!,
        signature: mapValueOfType<String>(json, r'signature'),
        commitAudit: AuditDetails.fromJson(json[r'commit_audit'])!,
        data: Versionable.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<ImportedVersion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImportedVersion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportedVersion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportedVersion> mapFromJson(dynamic json) {
    final map = <String, ImportedVersion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportedVersion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportedVersion-objects as value to a dart map
  static Map<String, List<ImportedVersion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImportedVersion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImportedVersion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'item',
    'contribution',
    'commit_audit',
    'data',
  };
}

