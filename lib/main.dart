import 'package:QuizApp/UI/buttons/gradient_button.dart';
import 'package:QuizApp/UI/quiz/CustomPage.dart';
import 'package:QuizApp/UI/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Quiz App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.transparent,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: InitalPage(),
      ),
    );
  }
}

class InitalPage extends StatefulWidget {
  @override
  _InitalPageState createState() => _InitalPageState();
}

class _InitalPageState extends State<InitalPage> {
  TextStyle basicStyle =
      TextStyle(color: Colors.white, fontSize: 16, letterSpacing: 8);

  Gradient _grablue = LinearGradient(
    colors: [
      Colors.blue[600].withOpacity(0.8),
      Colors.cyan[300].withOpacity(0.8),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  Gradient _graorange = LinearGradient(
    colors: [
      Colors.red[600].withOpacity(0.8),
      Colors.orange[500].withOpacity(0.8),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        GradientButton(
          gradient: _grablue,
          child: Text(
            "Random Quiz",
            style: basicStyle,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuizScreen()),
            );
          },
        ),
        SizedBox(
          height: 20.0,
        ),
        GradientButton(
          gradient: _graorange,
          child: Text(
            "Custom Quiz",
            style: basicStyle,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CustomPage()),
            );
          },
        ),
      ]),
    );
  }
}
