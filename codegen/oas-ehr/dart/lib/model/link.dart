//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Link {
  /// Returns a new [Link] instance.
  Link({
    required this.meaning,
    required this.type,
    required this.target,
  });

  DvText meaning;

  DvText type;

  DvEhrUri target;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Link &&
     other.meaning == meaning &&
     other.type == type &&
     other.target == target;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (meaning.hashCode) +
    (type.hashCode) +
    (target.hashCode);

  @override
  String toString() => 'Link[meaning=$meaning, type=$type, target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'meaning'] = this.meaning;
      json[r'type'] = this.type;
      json[r'target'] = this.target;
    return json;
  }

  /// Returns a new [Link] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Link? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Link[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Link[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Link(
        meaning: DvText.fromJson(json[r'meaning'])!,
        type: DvText.fromJson(json[r'type'])!,
        target: DvEhrUri.fromJson(json[r'target'])!,
      );
    }
    return null;
  }

  static List<Link> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Link>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Link.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Link> mapFromJson(dynamic json) {
    final map = <String, Link>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Link.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Link-objects as value to a dart map
  static Map<String, List<Link>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Link>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Link.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'meaning',
    'type',
    'target',
  };
}

