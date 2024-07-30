/// source : {"id":null,"name":"Diariomotor.com"}
/// author : "David Durán"
/// title : "Tesla y su SUV estrella pierden fuelle en el primer semestre de 2024"
/// description : "El informe de JATO sobre las matriculaciones en Europa en la primera mitad de este 2024 refleja datos de lo más interesante en diferentes sectores. En primer lugar, deja datos positivos con un aumento del 4,4% entre enero y junio de 2024 en comparación con el…"
/// url : "https://www.diariomotor.com/noticia/tesla-model-y-primer-semestre-2024/"
/// urlToImage : "https://www.diariomotor.com/imagenes/2024/07/tesla-model-y-detalle-faros-1083446.jpg"
/// publishedAt : "2024-07-27T17:00:21Z"
/// content : "El informe de JATO sobre las matriculaciones en Europa en la primera mitad de este 2024 refleja datos de lo más interesante en diferentes sectores. En primer lugar, deja datos positivos con un aument… [+3756 chars]"

class NewsModel {
  NewsModel({
      Source? source, 
      String? author, 
      String? title, 
      String? description, 
      String? url, 
      String? urlToImage, 
      String? publishedAt, 
      String? content,}){
    _source = source;
    _author = author;
    _title = title;
    _description = description;
    _url = url;
    _urlToImage = urlToImage;
    _publishedAt = publishedAt;
    _content = content;
}

  NewsModel.fromJson(dynamic json) {
    _source = json['source'] != null ? Source.fromJson(json['source']) : null;
    _author = json['author'];
    _title = json['title'];
    _description = json['description'];
    _url = json['url'];
    _urlToImage = json['urlToImage'];
    _publishedAt = json['publishedAt'];
    _content = json['content'];
  }
  Source? _source;
  String? _author;
  String? _title;
  String? _description;
  String? _url;
  String? _urlToImage;
  String? _publishedAt;
  String? _content;
NewsModel copyWith({  Source? source,
  String? author,
  String? title,
  String? description,
  String? url,
  String? urlToImage,
  String? publishedAt,
  String? content,
}) => NewsModel(  source: source ?? _source,
  author: author ?? _author,
  title: title ?? _title,
  description: description ?? _description,
  url: url ?? _url,
  urlToImage: urlToImage ?? _urlToImage,
  publishedAt: publishedAt ?? _publishedAt,
  content: content ?? _content,
);
  Source? get source => _source;
  String? get author => _author;
  String? get title => _title;
  String? get description => _description;
  String? get url => _url;
  String? get urlToImage => _urlToImage;
  String? get publishedAt => _publishedAt;
  String? get content => _content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_source != null) {
      map['source'] = _source?.toJson();
    }
    map['author'] = _author;
    map['title'] = _title;
    map['description'] = _description;
    map['url'] = _url;
    map['urlToImage'] = _urlToImage;
    map['publishedAt'] = _publishedAt;
    map['content'] = _content;
    return map;
  }

}

/// id : null
/// name : "Diariomotor.com"

class Source {
  Source({
      dynamic id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Source.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  dynamic _id;
  String? _name;
Source copyWith({  dynamic id,
  String? name,
}) => Source(  id: id ?? _id,
  name: name ?? _name,
);
  dynamic get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}