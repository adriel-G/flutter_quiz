import 'package:question_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'I am ready for this quiz!', a: true),
    Question(
        q: 'Flutter is an Open-Source mobile application development framework created by Google',
        a: true),
    Question(q: 'Flutter apps are written in Javascript.', a: false),
    Question(q: 'Flutter can only develop apps for Android.', a: false),
    Question(
        q: 'The function runApp() is responsible for starting the program',
        a: false),
    Question(q: 'SDK stands for "Software Development Kit".', a: true),
    Question(
        q: 'A notable feature of the Dart platform is its support for "hot reload".',
        a: true),
    Question(q: 'Flutter is a programming language.', a: false),
    Question(
        q: 'SizedBox is a widget that enables us to have a specific height or width between the widgets.',
        a: true),
    Question(
        q: 'A Container widget can have unlimited child widgets.', a: false),
    Question(q: 'A Stateless widget is mutable.', a: false),
    Question(
        q: 'Flutter Doctor can be used as a command to verify you have set up your flutter environment correctly.',
        a: true),
    Question(
        q: 'The ?? operator evaluates and returns the value between two expressions.',
        a: true),
    Question(
        q: 'Release mode allows us to optimize the codes and generate them without any debug data in a fully optimized form.',
        a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
