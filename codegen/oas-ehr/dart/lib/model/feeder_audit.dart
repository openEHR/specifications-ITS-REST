//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FeederAudit {
  /// Returns a new [FeederAudit] instance.
  FeederAudit({
    this.originatingSystemItemIds = const [],
    this.feederSystemItemIds = const [],
    this.originalContent,
    required this.originatingSystemAudit,
    this.feederSystemAudit,
  });

  List<DvIdentifier> originatingSystemItemIds;

  List<DvIdentifier> feederSystemItemIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvEncapsulated? originalContent;

  FeederAuditDetails originatingSystemAudit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FeederAuditDetails? feederSystemAudit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FeederAudit &&
    _deepEquality.equals(other.originatingSystemItemIds, originatingSystemItemIds) &&
    _deepEquality.equals(other.feederSystemItemIds, feederSystemItemIds) &&
    other.originalContent == originalContent &&
    other.originatingSystemAudit == originatingSystemAudit &&
    other.feederSystemAudit == feederSystemAudit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (originatingSystemItemIds.hashCode) +
    (feederSystemItemIds.hashCode) +
    (originalContent == null ? 0 : originalContent!.hashCode) +
    (originatingSystemAudit.hashCode) +
    (feederSystemAudit == null ? 0 : feederSystemAudit!.hashCode);

  @override
  String toString() => 'FeederAudit[originatingSystemItemIds=$originatingSystemItemIds, feederSystemItemIds=$feederSystemItemIds, originalContent=$originalContent, originatingSystemAudit=$originatingSystemAudit, feederSystemAudit=$feederSystemAudit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'originating_system_item_ids'] = this.originatingSystemItemIds;
      json[r'feeder_system_item_ids'] = this.feederSystemItemIds;
    if (this.originalContent != null) {
      json[r'original_content'] = this.originalContent;
    } else {
      json[r'original_content'] = null;
    }
      json[r'originating_system_audit'] = this.originatingSystemAudit;
    if (this.feederSystemAudit != null) {
      json[r'feeder_system_audit'] = this.feederSystemAudit;
    } else {
      json[r'feeder_system_audit'] = null;
    }
    return json;
  }

  /// Returns a new [FeederAudit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FeederAudit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FeederAudit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FeederAudit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FeederAudit(
        originatingSystemItemIds: DvIdentifier.listFromJson(json[r'originating_system_item_ids']),
        feederSystemItemIds: DvIdentifier.listFromJson(json[r'feeder_system_item_ids']),
        originalContent: DvEncapsulated.fromJson(json[r'original_content']),
        originatingSystemAudit: FeederAuditDetails.fromJson(json[r'originating_system_audit'])!,
        feederSystemAudit: FeederAuditDetails.fromJson(json[r'feeder_system_audit']),
      );
    }
    return null;
  }

  static List<FeederAudit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FeederAudit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FeederAudit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FeederAudit> mapFromJson(dynamic json) {
    final map = <String, FeederAudit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FeederAudit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FeederAudit-objects as value to a dart map
  static Map<String, List<FeederAudit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FeederAudit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FeederAudit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'originating_system_audit',
  };
}

