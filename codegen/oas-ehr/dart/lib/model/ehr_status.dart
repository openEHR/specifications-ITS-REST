//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EhrStatus {
  /// Returns a new [EhrStatus] instance.
  EhrStatus({
    this.type = 'EHR_STATUS',
    required this.subject,
    this.isQueryable = true,
    this.isModifiable = true,
    this.otherDetails,
  });

  String type;

  PartyProxy subject;

  bool isQueryable;

  bool isModifiable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ItemStructure? otherDetails;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EhrStatus &&
     other.type == type &&
     other.subject == subject &&
     other.isQueryable == isQueryable &&
     other.isModifiable == isModifiable &&
     other.otherDetails == otherDetails;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (subject.hashCode) +
    (isQueryable.hashCode) +
    (isModifiable.hashCode) +
    (otherDetails == null ? 0 : otherDetails!.hashCode);

  @override
  String toString() => 'EhrStatus[type=$type, subject=$subject, isQueryable=$isQueryable, isModifiable=$isModifiable, otherDetails=$otherDetails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'subject'] = this.subject;
      json[r'is_queryable'] = this.isQueryable;
      json[r'is_modifiable'] = this.isModifiable;
    if (this.otherDetails != null) {
      json[r'other_details'] = this.otherDetails;
    } else {
      json[r'other_details'] = null;
    }
    return json;
  }

  /// Returns a new [EhrStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EhrStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EhrStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EhrStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EhrStatus(
        type: mapValueOfType<String>(json, r'_type') ?? 'EHR_STATUS',
        subject: PartyProxy.fromJson(json[r'subject'])!,
        isQueryable: mapValueOfType<bool>(json, r'is_queryable')!,
        isModifiable: mapValueOfType<bool>(json, r'is_modifiable')!,
        otherDetails: ItemStructure.fromJson(json[r'other_details']),
      );
    }
    return null;
  }

  static List<EhrStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EhrStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EhrStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EhrStatus> mapFromJson(dynamic json) {
    final map = <String, EhrStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EhrStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EhrStatus-objects as value to a dart map
  static Map<String, List<EhrStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EhrStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EhrStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subject',
    'is_queryable',
    'is_modifiable',
  };
}

