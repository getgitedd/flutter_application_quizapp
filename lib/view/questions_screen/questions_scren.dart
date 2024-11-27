import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/utils/color_constant.dart';
import 'package:quiz_app/view/questions_screen/results_screen.dart/results_screen.dart';

class QuestionsScreen extends StatefulWidget {
  final List<Map<String, dynamic>> questions; // Accepts a list of questions

  const QuestionsScreen({super.key, required this.questions});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;
  int? selectedAnswerIndex;
  int correctAnswers = 0; // Counter for correct answers
  int remainingTime = 30; // 30 seconds
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    remainingTime = 30; // Reset timer
    timer?.cancel(); // Cancel any existing timer
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        setState(() {
          remainingTime--;
        });
      } else {
        timer.cancel(); // Stop the timer
        nextQuestion(); // Move to the next question
      }
    });
  }

  void nextQuestion() {
    if (selectedAnswerIndex == widget.questions[questionIndex]["answerIndex"]) {
      correctAnswers++;
    }

    if (questionIndex < widget.questions.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null; // Reset selected answer
      startTimer(); // Restart the timer
    } else {
      // Navigate to results screen with correctAnswers and totalQuestions
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultsScreen(
            correctAnswers: correctAnswers,
            totalQuestions: widget.questions.length,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel(); // Dispose of the timer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.scaffoldBackgroundColor,
        actions: [
          Text(
            "${questionIndex + 1} / ${widget.questions.length}",
            style: TextStyle(
                color: ColorConstants.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorConstants.questionsBgColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        widget.questions[questionIndex]["question"],
                        style: TextStyle(
                            color: ColorConstants.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: List.generate(
                    widget.questions[questionIndex]["options"].length,
                    (optionIndex) {
                      var currentQuestion = widget.questions[questionIndex];

                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: InkWell(
                          onTap: () {
                            if (selectedAnswerIndex == null) {
                              selectedAnswerIndex = optionIndex;
                              setState(() {}); // Update UI
                              timer?.cancel(); // Cancel timer on selection
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: getColor(optionIndex),
                                  width: 2,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  currentQuestion["options"][optionIndex],
                                  style: TextStyle(
                                      color: ColorConstants.textColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Icon(
                                  Icons.circle_outlined,
                                  color: ColorConstants.textColor,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                if (selectedAnswerIndex != null)
                  InkWell(
                    onTap: () {
                      nextQuestion(); // Move to the next question
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.textColor,
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: ColorConstants.scaffoldBackgroundColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
              ],
            ),
            Positioned(
              top: 5,
              right: 150,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "$remainingTime",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getColor(int currentOptionIndex) {
    if (selectedAnswerIndex != null &&
        currentOptionIndex == widget.questions[questionIndex]["answerIndex"]) {
      return ColorConstants.rightAnswerColor;
    }

    if (selectedAnswerIndex == currentOptionIndex) {
      if (selectedAnswerIndex ==
          widget.questions[questionIndex]["answerIndex"]) {
        return ColorConstants.rightAnswerColor;
      } else {
        return ColorConstants.wrongAnswerColor;
      }
    } else {
      return ColorConstants.questionsBgColor;
    }
  }
}
