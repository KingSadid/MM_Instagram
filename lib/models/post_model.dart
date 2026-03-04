import 'package:instagram/models/user_model.dart';
import 'package:instagram/models/comment_model.dart';

class PostModel {
  final String id;
  final UserModel user;
  final List<String> imageUrls;
  final String caption;
  final int likes;
  final DateTime createdAt;
  final String location;
  final List<CommentModel> comments;
  final bool isLiked;
  final bool isSaved;

  const PostModel({
    required this.id,
    required this.user,
    required this.imageUrls,
    required this.caption,
    required this.likes,
    required this.createdAt,
    this.location = '',
    this.comments = const [],
    this.isLiked = false,
    this.isSaved = false,
  });

  PostModel copyWith({
    bool? isLiked,
    int? likes,
    bool? isSaved,
    List<CommentModel>? comments,
  }) {
    return PostModel(
      id: id,
      user: user,
      imageUrls: imageUrls,
      caption: caption,
      likes: likes ?? this.likes,
      createdAt: createdAt,
      location: location,
      comments: comments ?? this.comments,
      isLiked: isLiked ?? this.isLiked,
      isSaved: isSaved ?? this.isSaved,
    );
  }
}
