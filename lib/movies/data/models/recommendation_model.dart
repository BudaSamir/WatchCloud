import 'package:watch_cloud/movies/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({required super.id, super.backdropPath});

  factory RecommendationModel.formJson(Map<String, dynamic> json) {
    return RecommendationModel(
        id: json['id'], backdropPath: json['"backdrop_path']);
  }
}
