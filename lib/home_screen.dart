import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:simple_calculator/Components/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = "";
  var answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: SafeArea(
        //minimum: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        userInput.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                       // textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      answer.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      //textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Button(
                        textColor: Colors.white,
                        title: "AC",
                        colors: Colors.red,
                        onPress: () {
                          userInput = "";
                          answer = "";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.white,
                        title: "DEL",
                        colors: Colors.green,
                        onPress: () {
                          userInput = userInput.substring(0,userInput.length - 1);
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.white,
                        title: "%",
                        colors: Colors.deepPurple,
                        onPress: () {
                          userInput += "%";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.white,
                        title: "/",
                        colors: Colors.deepPurple,
                        onPress: () {
                          userInput += "/";
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        textColor: Colors.black,
                        title: "7",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "7";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.black,
                        title: "8",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "8";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.black,
                        title: "9",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "9";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.white,
                        title: "x",
                        colors: Colors.deepPurple,
                        onPress: () {
                          userInput += "x";
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        textColor: Colors.black,
                        title: "4",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "4";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.black,
                        title: "5",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "5";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.black,
                        title: "6",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "6";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.white,
                        title: "-",
                        colors: Colors.deepPurple,
                        onPress: () {
                          userInput += "-";
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        textColor: Colors.black,
                        title: "1",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "1";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.black,
                        title: "2",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "2";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.black,
                        title: "3",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "3";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.white,
                        title: "+",
                        colors: Colors.deepPurple,
                        onPress: () {
                          userInput += "+";
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        textColor: Colors.black,
                        title: "0",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "0";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.black,
                        title: ".",
                        colors: Colors.white,
                        onPress: () {
                          userInput += ".";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.black,
                        title: "+/-",
                        colors: Colors.white,
                        onPress: () {
                          userInput += "+/-";
                          setState(() {

                          });
                        },
                      ),
                      Button(
                        textColor: Colors.white,
                        title: "=",
                        colors: Colors.deepPurple,
                        onPress: () {
                          equalPress();
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // equal Press
  void equalPress(){
    String finalUserInput = userInput.replaceAll("x", "*");
    
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }


}
