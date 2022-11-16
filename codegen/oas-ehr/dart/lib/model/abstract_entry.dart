//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AbstractEntry {
  /// Returns a new [AbstractEntry] instance.
  AbstractEntry({
    required this.language,
    required this.encoding,
    this.otherParticipations = const [],
    this.workflowId,
    required this.subject,
    this.provider,
    this.type,
  });

  CodePhrase language;

  CodePhrase encoding;

  List<Participation> otherParticipations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ObjectRef? workflowId;

  PartyProxy subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PartyProxy? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AbstractEntry &&
     other.language == language &&
     other.encoding == encoding &&
     other.otherParticipations == otherParticipations &&
     other.workflowId == workflowId &&
     other.subject == subject &&
     other.provider == provider &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (language.hashCode) +
    (encoding.hashCode) +
    (otherParticipations.hashCode) +
    (workflowId == null ? 0 : workflowId!.hashCode) +
    (subject.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'AbstractEntry[language=$language, encoding=$encoding, otherParticipations=$otherParticipations, workflowId=$workflowId, subject=$subject, provider=$provider, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'language'] = this.language;
      json[r'encoding'] = this.encoding;
      json[r'other_participations'] = this.otherParticipations;
    if (this.workflowId != null) {
      json[r'workflow_id'] = this.workflowId;
    } else {
      json[r'workflow_id'] = null;
    }
      json[r'subject'] = this.subject;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    return json;
  }

  /// Returns a new [AbstractEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AbstractEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AbstractEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AbstractEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AbstractEntry(
        language: CodePhrase.fromJson(json[r'language'])!,
        encoding: CodePhrase.fromJson(json[r'encoding'])!,
        otherParticipations: Participation.listFromJson(json[r'other_participations']) ?? const [],
        workflowId: ObjectRef.fromJson(json[r'workflow_id']),
        subject: PartyProxy.fromJson(json[r'subject'])!,
        provider: PartyProxy.fromJson(json[r'provider']),
        type: mapValueOfType<String>(json, r'_type'),
      );
    }
    return null;
  }

  static List<AbstractEntry>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AbstractEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AbstractEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AbstractEntry> mapFromJson(dynamic json) {
    final map = <String, AbstractEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AbstractEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AbstractEntry-objects as value to a dart map
  static Map<String, List<AbstractEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AbstractEntry>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AbstractEntry.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'language',
    'encoding',
    'subject',
  };
}

