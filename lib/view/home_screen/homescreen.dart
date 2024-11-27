import 'package:flutter/material.dart';
import 'package:quiz_app/view/questions_screen/questions_scren.dart';
import 'package:quiz_app/view/dummydb.dart'; // Import DummyDb to access questions

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Hi, User!",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/27872750/pexels-photo-27872750/free-photo-of-koln-pexels-meetup-model-phibiduboi-on-instagram.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              radius: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20), // Space between AppBar and containers
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Two columns
                childAspectRatio: 1.0, // Square aspect ratio
                mainAxisSpacing: 16.0, // Space between rows
                crossAxisSpacing: 16.0, // Space between columns
                children: [
                  buildContainer(context, "Sports"),
                  buildContainer(context, "Geography"),
                  buildContainer(context, "Movie"),
                  buildContainer(context, "History"),
                  buildContainer(context, "Physics"),
                  buildContainer(context, "Artists"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(BuildContext context, String text) {
    return GestureDetector(
      onTap: () => onContainerTapped(context, text),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey, // Background color of the container
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        child: Center(
          child: Text(
            text, // Text in the center
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void onContainerTapped(BuildContext context, String category) {
    List<Map<String, dynamic>> selectedQuestions;

    // Determine which category was tapped and assign the corresponding questions
    switch (category) {
      case "Sports":
        selectedQuestions = DummyDb.sportsQuestions;
        break;
      case "Geography":
        selectedQuestions = DummyDb.geographyQuestions;
        break;
      case "Movie":
        selectedQuestions = DummyDb.movieQuestions;
        break;
      case "History":
        selectedQuestions = DummyDb.historyQuestions;
        break;
      case "Physics":
        selectedQuestions = DummyDb.physicsQuestions;
        break;
      case "Artists":
        selectedQuestions = DummyDb.artistQuestions;
        break;
      default:
        selectedQuestions = [];
    }

    // Navigate to QuestionsScreen with the selected questions
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuestionsScreen(questions: selectedQuestions),
      ),
    );
  }
}
