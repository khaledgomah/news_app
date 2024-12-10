class Articles {
  final String? sourceName;
  String? author;
  String? title;
  String? description;
  String? url;
  String? imageUrl;
  String? content;
  Articles({
    this.sourceName,
    this.author,
    this.title,
    this.description,
    this.url,
    this.imageUrl,
    this.content,
  });
  factory Articles.fromJson({required Map<String, dynamic> json}) {
    return Articles(
        sourceName: json['source']['name'],
        author: json['author'],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        imageUrl: json['urlToImage'],
        content: json['content']);
  }
}
