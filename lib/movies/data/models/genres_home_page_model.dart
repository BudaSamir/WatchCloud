import '../../domain/entities/genres_home_page.dart';

class GenresHomePageModel extends GenresHomePage {
  const GenresHomePageModel({required super.name, required super.id});

  factory GenresHomePageModel.fromJson(Map<String, dynamic> json) {
    return GenresHomePageModel(name: json['name'], id: json['id']);
  }
}
