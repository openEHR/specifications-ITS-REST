//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CodePhrase {
  /// Returns a new [CodePhrase] instance.
  CodePhrase({
    required this.terminologyId,
    required this.codeString,
    this.preferredTerm,
  });

  TerminologyId terminologyId;

  String codeString;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferredTerm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodePhrase &&
     other.terminologyId == terminologyId &&
     other.codeString == codeString &&
     other.preferredTerm == preferredTerm;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (terminologyId.hashCode) +
    (codeString.hashCode) +
    (preferredTerm == null ? 0 : preferredTerm!.hashCode);

  @override
  String toString() => 'CodePhrase[terminologyId=$terminologyId, codeString=$codeString, preferredTerm=$preferredTerm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'terminology_id'] = this.terminologyId;
      json[r'code_string'] = this.codeString;
    if (this.preferredTerm != null) {
      json[r'preferred_term'] = this.preferredTerm;
    } else {
      json[r'preferred_term'] = null;
    }
    return json;
  }

  /// Returns a new [CodePhrase] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodePhrase? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodePhrase[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodePhrase[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodePhrase(
        terminologyId: TerminologyId.fromJson(json[r'terminology_id'])!,
        codeString: mapValueOfType<String>(json, r'code_string')!,
        preferredTerm: mapValueOfType<String>(json, r'preferred_term'),
      );
    }
    return null;
  }

  static List<CodePhrase> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodePhrase>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodePhrase.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodePhrase> mapFromJson(dynamic json) {
    final map = <String, CodePhrase>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodePhrase.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodePhrase-objects as value to a dart map
  static Map<String, List<CodePhrase>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CodePhrase>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CodePhrase.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'terminology_id',
    'code_string',
  };
}

