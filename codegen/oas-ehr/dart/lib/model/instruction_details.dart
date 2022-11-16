//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InstructionDetails {
  /// Returns a new [InstructionDetails] instance.
  InstructionDetails({
    this.type = 'INSTRUCTION_DETAILS',
    required this.instructionId,
    required this.activityId,
    this.wfDetails,
  });

  String type;

  LocatableRef instructionId;

  String activityId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ItemStructure? wfDetails;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InstructionDetails &&
     other.type == type &&
     other.instructionId == instructionId &&
     other.activityId == activityId &&
     other.wfDetails == wfDetails;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (instructionId.hashCode) +
    (activityId.hashCode) +
    (wfDetails == null ? 0 : wfDetails!.hashCode);

  @override
  String toString() => 'InstructionDetails[type=$type, instructionId=$instructionId, activityId=$activityId, wfDetails=$wfDetails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'instruction_id'] = this.instructionId;
      json[r'activity_id'] = this.activityId;
    if (this.wfDetails != null) {
      json[r'wf_details'] = this.wfDetails;
    } else {
      json[r'wf_details'] = null;
    }
    return json;
  }

  /// Returns a new [InstructionDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InstructionDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InstructionDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InstructionDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InstructionDetails(
        type: mapValueOfType<String>(json, r'_type') ?? 'INSTRUCTION_DETAILS',
        instructionId: LocatableRef.fromJson(json[r'instruction_id'])!,
        activityId: mapValueOfType<String>(json, r'activity_id')!,
        wfDetails: ItemStructure.fromJson(json[r'wf_details']),
      );
    }
    return null;
  }

  static List<InstructionDetails>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InstructionDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InstructionDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InstructionDetails> mapFromJson(dynamic json) {
    final map = <String, InstructionDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InstructionDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InstructionDetails-objects as value to a dart map
  static Map<String, List<InstructionDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InstructionDetails>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InstructionDetails.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'instruction_id',
    'activity_id',
  };
}

