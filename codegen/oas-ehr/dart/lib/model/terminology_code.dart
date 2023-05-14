//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TerminologyCode {
  /// Returns a new [TerminologyCode] instance.
  TerminologyCode({
    required this.terminologyId,
    this.terminologyVersion,
    required this.codeString,
    this.uri,
  });

  String terminologyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? terminologyVersion;

  String codeString;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TerminologyCode &&
     other.terminologyId == terminologyId &&
     other.terminologyVersion == terminologyVersion &&
     other.codeString == codeString &&
     other.uri == uri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (terminologyId.hashCode) +
    (terminologyVersion == null ? 0 : terminologyVersion!.hashCode) +
    (codeString.hashCode) +
    (uri == null ? 0 : uri!.hashCode);

  @override
  String toString() => 'TerminologyCode[terminologyId=$terminologyId, terminologyVersion=$terminologyVersion, codeString=$codeString, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'terminology_id'] = this.terminologyId;
    if (this.terminologyVersion != null) {
      json[r'terminology_version'] = this.terminologyVersion;
    } else {
      json[r'terminology_version'] = null;
    }
      json[r'code_string'] = this.codeString;
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    return json;
  }

  /// Returns a new [TerminologyCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TerminologyCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TerminologyCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TerminologyCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TerminologyCode(
        terminologyId: mapValueOfType<String>(json, r'terminology_id')!,
        terminologyVersion: mapValueOfType<String>(json, r'terminology_version'),
        codeString: mapValueOfType<String>(json, r'code_string')!,
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<TerminologyCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TerminologyCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TerminologyCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TerminologyCode> mapFromJson(dynamic json) {
    final map = <String, TerminologyCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TerminologyCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TerminologyCode-objects as value to a dart map
  static Map<String, List<TerminologyCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TerminologyCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TerminologyCode.listFromJson(entry.value, growable: growable,);
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

