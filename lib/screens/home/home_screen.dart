import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/auth_provider.dart';
import 'post_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pantamindre',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: const PantList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PostScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class PantList extends StatelessWidget {
  const PantList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: ListTile(
            leading: const Icon(Icons.local_drink),
            title: const Text('Cans Available Nearby'),
            subtitle: const Text('Find cans to collect'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // TODO: Navigate to cans list
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('My Location'),
            subtitle: const Text('Update your location'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // TODO: Handle location update
            },
          ),
        ),
      ],
    );
  }
}
