import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB76E79),
        foregroundColor: Colors.white,
        title: const Text(
          'IMQ Family Chat',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Welcome to IMQ!',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF9C4565),
            ),
          ),
          const SizedBox(height: 20),
          _menu(Icons.chat, 'Messages', 'Chat with family'),
          _menu(Icons.call, 'Voice Call', 'Talk with family'),
          _menu(Icons.mic, 'Voice Messages', 'Send voice messages'),
          _menu(Icons.photo, 'Photos and Videos', 'Share your memories'),
          _menu(Icons.bluetooth, 'Offline Connection', 'Nearby device connection'),
          _menu(Icons.settings, 'Settings', 'Manage your account'),
        ],
      ),
    );
  }

  Widget _menu(IconData icon, String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFFFD6E5),
          child: Icon(icon, color: const Color(0xFF9C4565)),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
