import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text("Workout Plans", style: TextStyle(fontSize: 20, color: Colors.grey)),
          const SizedBox(height: 20),
          _buildWorkout("Chest Workout", "45 min", Icons.fitness_center),
          _buildWorkout("Leg Day", "50 min", Icons.directions_run),
          _buildWorkout("Yoga Session", "30 min", Icons.self_improvement),
        ],
      ),
    );
  }

  Widget _buildWorkout(String title, String time, IconData icon) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.pink),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(time),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}