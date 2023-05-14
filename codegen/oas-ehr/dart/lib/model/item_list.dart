//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ItemList {
  /// Returns a new [ItemList] instance.
  ItemList({
    this.type = 'ITEM_LIST',
    this.items = const [],
  });

  String type;

  List<Element> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ItemList &&
     other.type == type &&
     other.items == items;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (items.hashCode);

  @override
  String toString() => 'ItemList[type=$type, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [ItemList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ItemList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ItemList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ItemList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ItemList(
        type: mapValueOfType<String>(json, r'_type') ?? 'ITEM_LIST',
        items: Element.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<ItemList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ItemList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ItemList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ItemList> mapFromJson(dynamic json) {
    final map = <String, ItemList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ItemList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ItemList-objects as value to a dart map
  static Map<String, List<ItemList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ItemList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ItemList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

