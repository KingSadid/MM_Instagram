import 'user_model.dart';

class StoryModel {
  final String id;
  final UserModel user;
  final String imageUrl;
  final bool isViewed;

  const StoryModel({
    required this.id,
    required this.user,
    required this.imageUrl,
    this.isViewed = false,
  });
}
