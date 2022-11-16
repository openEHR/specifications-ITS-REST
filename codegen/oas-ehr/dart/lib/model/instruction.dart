//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Instruction {
  /// Returns a new [Instruction] instance.
  Instruction({
    this.type = 'INSTRUCTION',
    required this.narrative,
    this.expiryTime,
    this.wfDefinition,
    this.activities = const [],
  });

  String type;

  DvText narrative;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvDateTime? expiryTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvParsable? wfDefinition;

  List<Activity> activities;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Instruction &&
     other.type == type &&
     other.narrative == narrative &&
     other.expiryTime == expiryTime &&
     other.wfDefinition == wfDefinition &&
     other.activities == activities;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (narrative.hashCode) +
    (expiryTime == null ? 0 : expiryTime!.hashCode) +
    (wfDefinition == null ? 0 : wfDefinition!.hashCode) +
    (activities.hashCode);

  @override
  String toString() => 'Instruction[type=$type, narrative=$narrative, expiryTime=$expiryTime, wfDefinition=$wfDefinition, activities=$activities]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'narrative'] = this.narrative;
    if (this.expiryTime != null) {
      json[r'expiry_time'] = this.expiryTime;
    } else {
      json[r'expiry_time'] = null;
    }
    if (this.wfDefinition != null) {
      json[r'wf_definition'] = this.wfDefinition;
    } else {
      json[r'wf_definition'] = null;
    }
      json[r'activities'] = this.activities;
    return json;
  }

  /// Returns a new [Instruction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Instruction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Instruction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Instruction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Instruction(
        type: mapValueOfType<String>(json, r'_type') ?? 'INSTRUCTION',
        narrative: DvText.fromJson(json[r'narrative'])!,
        expiryTime: DvDateTime.fromJson(json[r'expiry_time']),
        wfDefinition: DvParsable.fromJson(json[r'wf_definition']),
        activities: Activity.listFromJson(json[r'activities']) ?? const [],
      );
    }
    return null;
  }

  static List<Instruction>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Instruction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Instruction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Instruction> mapFromJson(dynamic json) {
    final map = <String, Instruction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Instruction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Instruction-objects as value to a dart map
  static Map<String, List<Instruction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Instruction>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Instruction.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'narrative',
  };
}

