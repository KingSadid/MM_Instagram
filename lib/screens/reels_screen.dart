import 'package:flutter/material.dart';
import 'package:instagram/utils/dummy_data.dart';
import 'package:instagram/widgets/custom_network_image.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reels = DummyData.reelsVideos;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Reels',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: reels.length,
        itemBuilder: (context, index) {
          return _ReelItem(imageUrl: reels[index]);
        },
      ),
    );
  }
}

class _ReelItem extends StatelessWidget {
  final String imageUrl;

  const _ReelItem({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black.withValues(alpha: 0.4), Colors.transparent, Colors.black.withValues(alpha: 0.6)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.0, 0.5, 1.0],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 16,
          right: 80, // Leave space for actions
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=12'),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'creative_user',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text('Follow', style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Creating amazing native apps with Flutter. #flutter #native #dev',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(Icons.music_note, color: Colors.white, size: 16),
                  const SizedBox(width: 4),
                  const Text('Original Audio - creative_user', style: TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: 8,
          child: Column(
            children: [
              _buildActionItem(Icons.favorite_border, '1.2M'),
              _buildActionItem(Icons.chat_bubble_outline, '4K'),
              _buildActionItem(Icons.send_outlined, '12K'),
              const SizedBox(height: 12),
              const Icon(Icons.more_vert, color: Colors.white),
              const SizedBox(height: 24),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(4),
                  image: const DecorationImage(
                    image: NetworkImage('https://i.pravatar.cc/150?img=12'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionItem(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 32),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}
