import 'package:equatable/equatable.dart';

class GenreHomePage extends Equatable {
  final String name;
  final int id;

  const GenreHomePage({required this.name, required this.id});

  @override
  List<Object?> get props => [name, id];
}
