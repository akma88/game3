import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text("Your Progress", style: TextStyle(fontSize: 20, color: Colors.grey)),
          const SizedBox(height: 20),
          _card("Calories Burned", "1,250 kcal", Colors.pink[100]!),
          const SizedBox(height: 15),
          _card("Workout Hours", "12 hrs", Colors.purple[100]!),
        ],
      ),
    );
  }

  Widget _card(String t, String v, Color c) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(color: c, borderRadius: BorderRadius.circular(20)),
      child: Column(children: [Text(t), Text(v, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold))]),
    );
  }
}