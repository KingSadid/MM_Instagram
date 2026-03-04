import 'package:flutter/material.dart';
import '../../data/dummy_data.dart';
import '../../shared/widgets/custom_network_image.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = DummyData.explorePosts;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 36,
          decoration: BoxDecoration(
            color: Theme.of(context).dividerColor.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search, size: 20),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 8),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(2),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return CustomNetworkImage(
            imageUrl: posts[index].imageUrls.first,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
