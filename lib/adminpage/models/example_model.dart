class Book {
  final String title;
  final String author;
  final String genre;
  final int pages;
  final int publishedYear;
  final String description;
  final String thumbnail;
  final double ratingsAvg;
  final int ratingsCount;
  final String isbn10;
  final String isbn13;
  // ... other fields ...

  Book({
    required this.title,
    required this.author,
    required this.genre,
    required this.pages,
    required this.publishedYear,
    required this.description,
    required this.thumbnail,
    required this.ratingsAvg,
    required this.ratingsCount,
    required this.isbn10,
    required this.isbn13,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['fields']['title'],
      author: json['fields']['author'],
      genre: json['fields']['genre'],
      pages: json['fields']['pages'] as int, // Ensure this is cast to int
      publishedYear: json['fields']['published_year']
          as int, // Use underscore for the key if that's what your JSON uses
      description: json['fields']['description'],
      thumbnail: json['fields']['thumbnail'],
      ratingsAvg: (json['fields']['ratings_avg'] as num)
          .toDouble(), // Cast to num, then to double
      ratingsCount: json['fields']['ratings_count'] as int,
      isbn10: json['fields']['isbn10'],
      isbn13: json['fields']['isbn13'],
      // ... initialize other fields ...
    );
  }
}
