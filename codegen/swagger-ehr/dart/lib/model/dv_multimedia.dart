part of swagger.api;

class DvMultimedia {
  
  String type = "DV_MULTIMEDIA";

  CodePhrase charset = null;

  CodePhrase language = null;

  String alternateText = null;

  DvUri uri = null;

  String data = null;

  CodePhrase mediaType = null;

  CodePhrase compressionAlgorithm = null;

  String integrityCheck = null;

  CodePhrase integrityCheckAlgorithm = null;

  DvMultimedia thumbnail = null;

  int size = null;

  DvMultimedia();

  @override
  String toString() {
    return 'DvMultimedia[type=$type, charset=$charset, language=$language, alternateText=$alternateText, uri=$uri, data=$data, mediaType=$mediaType, compressionAlgorithm=$compressionAlgorithm, integrityCheck=$integrityCheck, integrityCheckAlgorithm=$integrityCheckAlgorithm, thumbnail=$thumbnail, size=$size, ]';
  }

  DvMultimedia.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    charset = new CodePhrase.fromJson(json['charset']);
    language = new CodePhrase.fromJson(json['language']);
    alternateText = json['alternate_text'];
    uri = new DvUri.fromJson(json['uri']);
    data = json['data'];
    mediaType = new CodePhrase.fromJson(json['media_type']);
    compressionAlgorithm = new CodePhrase.fromJson(json['compression_algorithm']);
    integrityCheck = json['integrity_check'];
    integrityCheckAlgorithm = new CodePhrase.fromJson(json['integrity_check_algorithm']);
    thumbnail = new DvMultimedia.fromJson(json['thumbnail']);
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'charset': charset,
      'language': language,
      'alternate_text': alternateText,
      'uri': uri,
      'data': data,
      'media_type': mediaType,
      'compression_algorithm': compressionAlgorithm,
      'integrity_check': integrityCheck,
      'integrity_check_algorithm': integrityCheckAlgorithm,
      'thumbnail': thumbnail,
      'size': size
     };
  }

  static List<DvMultimedia> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvMultimedia>() : json.map((value) => new DvMultimedia.fromJson(value)).toList();
  }

  static Map<String, DvMultimedia> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvMultimedia>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvMultimedia.fromJson(value));
    }
    return map;
  }
}
