//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ItemSingle {
  /// Returns a new [ItemSingle] instance.
  ItemSingle({
    this.type = 'ITEM_SINGLE',
    required this.item,
  });

  String type;

  Element item;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ItemSingle &&
    other.type == type &&
    other.item == item;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (item.hashCode);

  @override
  String toString() => 'ItemSingle[type=$type, item=$item]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'item'] = this.item;
    return json;
  }

  /// Returns a new [ItemSingle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ItemSingle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ItemSingle[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ItemSingle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ItemSingle(
        type: mapValueOfType<String>(json, r'_type') ?? 'ITEM_SINGLE',
        item: Element.fromJson(json[r'item'])!,
      );
    }
    return null;
  }

  static List<ItemSingle> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ItemSingle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ItemSingle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ItemSingle> mapFromJson(dynamic json) {
    final map = <String, ItemSingle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ItemSingle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ItemSingle-objects as value to a dart map
  static Map<String, List<ItemSingle>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ItemSingle>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ItemSingle.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'item',
  };
}

