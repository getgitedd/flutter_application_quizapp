import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final int correctAnswers;
  final int totalQuestions;

  const ResultsScreen({
    super.key,
    required this.correctAnswers,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    // Calculate percentage and number of stars to fill
    double percentage = (correctAnswers / totalQuestions) * 100;
    int filledStars = (percentage / 100 * 3).round();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Results',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            // Display stars
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Icon(
                  index < filledStars ? Icons.star : Icons.star_border,
                  color: index < filledStars ? Colors.amber : Colors.grey,
                  size: 50,
                );
              }),
            ),
            const SizedBox(height: 20),
            // Display correct answers
            Text(
              'You got $correctAnswers out of $totalQuestions correct!',
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 20),
            // Display percentage
            Text(
              '${percentage.toStringAsFixed(1)}%',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the HomeScreen
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
