import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        const CircleAvatar(radius: 50, backgroundColor: Colors.pink, child: Icon(Icons.person, size: 60, color: Colors.white)),
        const SizedBox(height: 15),
        const Text("Akmarzhan", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const Text("Fitness Enthusiast", style: TextStyle(color: Colors.grey)),
        const SizedBox(height: 30),
        const ListTile(leading: Icon(Icons.settings), title: Text("Settings"), trailing: Icon(Icons.arrow_forward_ios, size: 16)),
        const ListTile(leading: Icon(Icons.logout), title: Text("Logout"), trailing: Icon(Icons.arrow_forward_ios, size: 16)),
      ],
    );
  }
}