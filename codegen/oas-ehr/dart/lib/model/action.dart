//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Action {
  /// Returns a new [Action] instance.
  Action({
    this.type = 'ACTION',
    required this.time,
    required this.ismTransition,
    this.instructionDetails,
    required this.description,
  });

  String type;

  DvDateTime time;

  IsmTransition ismTransition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InstructionDetails? instructionDetails;

  ItemStructure description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Action &&
     other.type == type &&
     other.time == time &&
     other.ismTransition == ismTransition &&
     other.instructionDetails == instructionDetails &&
     other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (time.hashCode) +
    (ismTransition.hashCode) +
    (instructionDetails == null ? 0 : instructionDetails!.hashCode) +
    (description.hashCode);

  @override
  String toString() => 'Action[type=$type, time=$time, ismTransition=$ismTransition, instructionDetails=$instructionDetails, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'time'] = this.time;
      json[r'ism_transition'] = this.ismTransition;
    if (this.instructionDetails != null) {
      json[r'instruction_details'] = this.instructionDetails;
    } else {
      json[r'instruction_details'] = null;
    }
      json[r'description'] = this.description;
    return json;
  }

  /// Returns a new [Action] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Action? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Action[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Action[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Action(
        type: mapValueOfType<String>(json, r'_type') ?? 'ACTION',
        time: DvDateTime.fromJson(json[r'time'])!,
        ismTransition: IsmTransition.fromJson(json[r'ism_transition'])!,
        instructionDetails: InstructionDetails.fromJson(json[r'instruction_details']),
        description: ItemStructure.fromJson(json[r'description'])!,
      );
    }
    return null;
  }

  static List<Action>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Action>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Action.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Action> mapFromJson(dynamic json) {
    final map = <String, Action>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Action.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Action-objects as value to a dart map
  static Map<String, List<Action>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Action>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Action.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'time',
    'ism_transition',
    'description',
  };
}

