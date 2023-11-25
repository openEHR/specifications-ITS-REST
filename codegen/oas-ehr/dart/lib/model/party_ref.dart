//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PartyRef {
  /// Returns a new [PartyRef] instance.
  PartyRef({
    required this.namespace,
    required this.type,
    required this.id,
  });

  String namespace;

  String type;

  ObjectId id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PartyRef &&
     other.namespace == namespace &&
     other.type == type &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (namespace.hashCode) +
    (type.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'PartyRef[namespace=$namespace, type=$type, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'namespace'] = this.namespace;
      json[r'type'] = this.type;
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [PartyRef] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PartyRef? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PartyRef[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PartyRef[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PartyRef(
        namespace: mapValueOfType<String>(json, r'namespace')!,
        type: mapValueOfType<String>(json, r'type')!,
        id: ObjectId.fromJson(json[r'id'])!,
      );
    }
    return null;
  }

  static List<PartyRef> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PartyRef>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PartyRef.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PartyRef> mapFromJson(dynamic json) {
    final map = <String, PartyRef>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PartyRef.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PartyRef-objects as value to a dart map
  static Map<String, List<PartyRef>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PartyRef>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PartyRef.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'namespace',
    'type',
    'id',
  };
}
