import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: Text("Fitness Home", style: TextStyle(color: Colors.grey))),
          const SizedBox(height: 20),
          const Text("Welcome Back!", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.pink[100], borderRadius: BorderRadius.circular(20)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today Steps", style: TextStyle(color: Colors.pink)),
                    Text("8,450", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  ],
                ),
                Icon(Icons.directions_walk, size: 40, color: Colors.pink),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text("Daily Tips", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          _buildTip(Icons.water_drop, "Drink more water", "Stay hydrated", Colors.blue),
          _buildTip(Icons.restaurant, "Healthy Meals", "Eat protein foods", Colors.orange),
        ],
      ),
    );
  }

  Widget _buildTip(IconData icon, String title, String sub, Color color) {
    return Card(
      margin: const EdgeInsets.only(top: 10),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(title),
        subtitle: Text(sub),
      ),
    );
  }
}