//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IsmTransition {
  /// Returns a new [IsmTransition] instance.
  IsmTransition({
    this.type = 'ISM_TRANSITION',
    required this.currentState,
    this.transition,
    this.careflowStep,
    this.reason = const [],
  });

  String type;

  DvCodedText currentState;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvCodedText? transition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvCodedText? careflowStep;

  List<DvText> reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IsmTransition &&
     other.type == type &&
     other.currentState == currentState &&
     other.transition == transition &&
     other.careflowStep == careflowStep &&
     other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (currentState.hashCode) +
    (transition == null ? 0 : transition!.hashCode) +
    (careflowStep == null ? 0 : careflowStep!.hashCode) +
    (reason.hashCode);

  @override
  String toString() => 'IsmTransition[type=$type, currentState=$currentState, transition=$transition, careflowStep=$careflowStep, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'current_state'] = this.currentState;
    if (this.transition != null) {
      json[r'transition'] = this.transition;
    } else {
      json[r'transition'] = null;
    }
    if (this.careflowStep != null) {
      json[r'careflow_step'] = this.careflowStep;
    } else {
      json[r'careflow_step'] = null;
    }
      json[r'reason'] = this.reason;
    return json;
  }

  /// Returns a new [IsmTransition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IsmTransition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IsmTransition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IsmTransition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IsmTransition(
        type: mapValueOfType<String>(json, r'_type') ?? 'ISM_TRANSITION',
        currentState: DvCodedText.fromJson(json[r'current_state'])!,
        transition: DvCodedText.fromJson(json[r'transition']),
        careflowStep: DvCodedText.fromJson(json[r'careflow_step']),
        reason: DvText.listFromJson(json[r'reason']) ?? const [],
      );
    }
    return null;
  }

  static List<IsmTransition>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IsmTransition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IsmTransition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IsmTransition> mapFromJson(dynamic json) {
    final map = <String, IsmTransition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IsmTransition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IsmTransition-objects as value to a dart map
  static Map<String, List<IsmTransition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IsmTransition>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IsmTransition.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'current_state',
  };
}

