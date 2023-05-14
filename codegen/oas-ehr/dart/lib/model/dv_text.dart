//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvText {
  /// Returns a new [DvText] instance.
  DvText({
    this.type = 'DV_TEXT',
    required this.value,
    this.hyperlink,
    this.formatting,
    this.mappings = const [],
    this.language,
    this.encoding,
  });

  String type;

  String value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvUri? hyperlink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formatting;

  List<TermMapping> mappings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodePhrase? language;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodePhrase? encoding;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvText &&
     other.type == type &&
     other.value == value &&
     other.hyperlink == hyperlink &&
     other.formatting == formatting &&
     other.mappings == mappings &&
     other.language == language &&
     other.encoding == encoding;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (value.hashCode) +
    (hyperlink == null ? 0 : hyperlink!.hashCode) +
    (formatting == null ? 0 : formatting!.hashCode) +
    (mappings.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (encoding == null ? 0 : encoding!.hashCode);

  @override
  String toString() => 'DvText[type=$type, value=$value, hyperlink=$hyperlink, formatting=$formatting, mappings=$mappings, language=$language, encoding=$encoding]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'value'] = this.value;
    if (this.hyperlink != null) {
      json[r'hyperlink'] = this.hyperlink;
    } else {
      json[r'hyperlink'] = null;
    }
    if (this.formatting != null) {
      json[r'formatting'] = this.formatting;
    } else {
      json[r'formatting'] = null;
    }
      json[r'mappings'] = this.mappings;
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.encoding != null) {
      json[r'encoding'] = this.encoding;
    } else {
      json[r'encoding'] = null;
    }
    return json;
  }

  /// Returns a new [DvText] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvText? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvText[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvText[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvText(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_TEXT',
        value: mapValueOfType<String>(json, r'value')!,
        hyperlink: DvUri.fromJson(json[r'hyperlink']),
        formatting: mapValueOfType<String>(json, r'formatting'),
        mappings: TermMapping.listFromJson(json[r'mappings']),
        language: CodePhrase.fromJson(json[r'language']),
        encoding: CodePhrase.fromJson(json[r'encoding']),
      );
    }
    return null;
  }

  static List<DvText> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvText>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvText.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvText> mapFromJson(dynamic json) {
    final map = <String, DvText>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvText.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvText-objects as value to a dart map
  static Map<String, List<DvText>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvText>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DvText.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'value',
  };
}

