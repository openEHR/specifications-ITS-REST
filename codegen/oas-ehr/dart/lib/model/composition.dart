//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Composition {
  /// Returns a new [Composition] instance.
  Composition({
    this.type = 'COMPOSITION',
    required this.language,
    required this.territory,
    required this.category,
    required this.context,
    required this.composer,
    this.content = const [],
  });

  String type;

  CodePhrase language;

  CodePhrase territory;

  DvCodedText category;

  EventContext context;

  PartyProxy composer;

  List<ContentItem> content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Composition &&
     other.type == type &&
     other.language == language &&
     other.territory == territory &&
     other.category == category &&
     other.context == context &&
     other.composer == composer &&
     other.content == content;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (language.hashCode) +
    (territory.hashCode) +
    (category.hashCode) +
    (context.hashCode) +
    (composer.hashCode) +
    (content.hashCode);

  @override
  String toString() => 'Composition[type=$type, language=$language, territory=$territory, category=$category, context=$context, composer=$composer, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'language'] = this.language;
      json[r'territory'] = this.territory;
      json[r'category'] = this.category;
      json[r'context'] = this.context;
      json[r'composer'] = this.composer;
      json[r'content'] = this.content;
    return json;
  }

  /// Returns a new [Composition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Composition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Composition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Composition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Composition(
        type: mapValueOfType<String>(json, r'_type') ?? 'COMPOSITION',
        language: CodePhrase.fromJson(json[r'language'])!,
        territory: CodePhrase.fromJson(json[r'territory'])!,
        category: DvCodedText.fromJson(json[r'category'])!,
        context: EventContext.fromJson(json[r'context'])!,
        composer: PartyProxy.fromJson(json[r'composer'])!,
        content: ContentItem.listFromJson(json[r'content']),
      );
    }
    return null;
  }

  static List<Composition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Composition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Composition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Composition> mapFromJson(dynamic json) {
    final map = <String, Composition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Composition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Composition-objects as value to a dart map
  static Map<String, List<Composition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Composition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Composition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'language',
    'territory',
    'category',
    'context',
    'composer',
    'content',
  };
}

