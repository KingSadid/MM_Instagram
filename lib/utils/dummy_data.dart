import 'package:instagram/models/user_model.dart';
import 'package:instagram/models/post_model.dart';
import 'package:instagram/models/comment_model.dart';
import 'package:instagram/models/story_model.dart';

class DummyData {
  static final UserModel currentUser = const UserModel(
    id: 'u0',
    username: 'alejandro_gotico',
    profileImageUrl: 'https://i.pravatar.cc/150?img=11',
    fullName: 'Alejandro el gotico',
    bio: 'Flutter Developer & Designer\nBuilding awesome native apps.',
    followers: 12500,
    following: 154,
    postsCount: 15,
  );

  static final List<UserModel> users = [
    currentUser,
    const UserModel(id: 'u1', username: 'Brian Zambranou', profileImageUrl: 'https://i.pravatar.cc/150?img=1', fullName: 'El Gordo de mierda', bio: 'Photography'),
    const UserModel(id: 'u2', username: 'Juan el forro Goyeneche', profileImageUrl: 'https://i.pravatar.cc/150?img=3', fullName: 'Juan chiquinquirá', bio: 'Code life'),
    const UserModel(id: 'u3', username: 'Angellus', profileImageUrl: 'https://i.pravatar.cc/150?img=5', fullName: 'Angelly Parra', bio: 'Traveler'),
    const UserModel(id: 'u4', username: 'El cubitos de Andrés', profileImageUrl: 'https://i.pravatar.cc/150?img=8', fullName: 'Andrés Cubillos', bio: 'iOS & Android'),
    const UserModel(id: 'u5', username: 'Christian Dior', profileImageUrl: 'https://i.pravatar.cc/150?img=9', fullName: 'Dior', bio: 'Designer'),
  ];

  static List<StoryModel> get stories {
    return users.skip(1).map((user) {
      final int index = users.indexOf(user);
      return StoryModel(
        id: 's_$index',
        user: user,
        imageUrl: 'https://picsum.photos/seed/story_$index/400/800', 
        isViewed: index > 3,
      );
    }).toList();
  }

  static List<PostModel> get posts {
    return [
      PostModel(
        id: 'p1',
        user: users[1],
        imageUrls: ['https://picsum.photos/seed/p1_1/800/800', 'https://picsum.photos/seed/p1_2/800/800'],
        caption: 'Exploring the mountains today. What a view!',
        likes: 1234,
        createdAt: DateTime.now().subtract(const Duration(hours: 2)),
        location: 'Swiss Alps',
        comments: [
          CommentModel(id: 'c1', user: users[2], text: 'Wow, absolutely stunning!', createdAt: DateTime.now().subtract(const Duration(minutes: 50)), likes: 12),
          CommentModel(id: 'c2', user: users[3], text: 'Take me there next time', createdAt: DateTime.now().subtract(const Duration(minutes: 30))),
        ],
      ),
      PostModel(
        id: 'p2',
        user: users[2],
        imageUrls: ['https://picsum.photos/seed/p2/800/800'],
        caption: 'Morning coffee and coding session. Perfect combo',
        likes: 567,
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
        location: 'Local Cafe',
        comments: [
          CommentModel(id: 'c3', user: users[4], text: 'What are you working on?', createdAt: DateTime.now().subtract(const Duration(hours: 1))),
        ],
      ),
      PostModel(
        id: 'p3',
        user: users[5],
        imageUrls: ['https://picsum.photos/seed/p3/800/800'],
        caption: 'New design concept I have been working on.',
        likes: 890,
        createdAt: DateTime.now().subtract(const Duration(days: 1)),
        comments: [],
      ),
    ];
  }

  static List<PostModel> get explorePosts {
    return List.generate(30, (index) {
      return PostModel(
        id: 'explore_$index',
        user: users[index % users.length],
        imageUrls: ['https://picsum.photos/seed/explore_$index/600/600'],
        caption: 'Random post #$index from explore!',
        likes: (index * 42) % 1000,
        createdAt: DateTime.now().subtract(Duration(days: index)),
      );
    });
  }

  static List<String> get reelsVideos {
    return List.generate(5, (index) => 'https://picsum.photos/seed/reel_$index/600/1200');
  }
}
