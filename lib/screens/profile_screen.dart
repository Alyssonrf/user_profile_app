import 'package:flutter/material.dart';
import 'edit_profile_screen.dart';
import '../widgets/profile_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = 'Alysson Ramos';
  String bio = 'Aprender à aprender';
  String imageUrl = 'https://via.placeholder.com/150';

  void _navigateToEditProfile(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfileScreen(
          name: name,
          bio: bio,
          imageUrl: imageUrl,
        ),
      ),
    );

    if (result != null) {
      setState(() {
        name = result['name'];
        bio = result['bio'];
        imageUrl = result['imageUrl'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => _navigateToEditProfile(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProfileInfo(
          name: name,
          bio: bio,
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}
