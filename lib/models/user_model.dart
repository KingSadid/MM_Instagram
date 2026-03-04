class UserModel {
  final String id;
  final String username;
  final String profileImageUrl;
  final String fullName;
  final String bio;
  final int followers;
  final int following;
  final int postsCount;

  const UserModel({
    required this.id,
    required this.username,
    required this.profileImageUrl,
    required this.fullName,
    required this.bio,
    this.followers = 0,
    this.following = 0,
    this.postsCount = 0,
  });
}
