import 'user_model.dart';

class CommentModel {
  final String id;
  final UserModel user;
  final String text;
  final DateTime createdAt;
  final int likes;
  final bool isLiked;

  const CommentModel({
    required this.id,
    required this.user,
    required this.text,
    required this.createdAt,
    this.likes = 0,
    this.isLiked = false,
  });

  CommentModel copyWith({
    bool? isLiked,
    int? likes,
  }) {
    return CommentModel(
      id: id,
      user: user,
      text: text,
      createdAt: createdAt,
      likes: likes ?? this.likes,
      isLiked: isLiked ?? this.isLiked,
    );
  }
}
