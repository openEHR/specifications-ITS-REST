//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RevisionHistoryItem {
  /// Returns a new [RevisionHistoryItem] instance.
  RevisionHistoryItem({
    required this.versionId,
    this.audits = const [],
  });

  ObjectVersionId versionId;

  List<AuditDetails> audits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevisionHistoryItem &&
     other.versionId == versionId &&
     other.audits == audits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (versionId.hashCode) +
    (audits.hashCode);

  @override
  String toString() => 'RevisionHistoryItem[versionId=$versionId, audits=$audits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'version_id'] = this.versionId;
      json[r'audits'] = this.audits;
    return json;
  }

  /// Returns a new [RevisionHistoryItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevisionHistoryItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RevisionHistoryItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RevisionHistoryItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RevisionHistoryItem(
        versionId: ObjectVersionId.fromJson(json[r'version_id'])!,
        audits: AuditDetails.listFromJson(json[r'audits'])!,
      );
    }
    return null;
  }

  static List<RevisionHistoryItem>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevisionHistoryItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevisionHistoryItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevisionHistoryItem> mapFromJson(dynamic json) {
    final map = <String, RevisionHistoryItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevisionHistoryItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevisionHistoryItem-objects as value to a dart map
  static Map<String, List<RevisionHistoryItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevisionHistoryItem>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevisionHistoryItem.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'version_id',
    'audits',
  };
}

