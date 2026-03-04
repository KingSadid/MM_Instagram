import 'package:flutter/material.dart';
import 'package:instagram/utils/dummy_data.dart';
import 'package:instagram/widgets/story_list.dart';
import 'package:instagram/widgets/post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = DummyData.posts;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'InstaFont', 
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Column(
              children: [
                StoryList(),
                Divider(height: 1),
              ],
            );
          }
          final post = posts[index - 1];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: PostCard(post: post),
          );
        },
      ),
    );
  }
}
