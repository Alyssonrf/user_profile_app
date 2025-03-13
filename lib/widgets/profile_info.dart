import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final String name;
  final String bio;
  final String imageUrl;

  const ProfileInfo({
    super.key,
    required this.name,
    required this.bio,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 50,
        ),
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        // ignore: sized_box_for_whitespace
        Container(
          width: double.infinity, // Ocupa toda a largura disponível
          child: Text(
            bio,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center, // Centraliza o texto
          ),
        ),
      ],
    );
  }
}
