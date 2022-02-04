import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_login/constant.dart';
import 'package:quizapp_login/screens/home_screen.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //2/6
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "About this App",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "Our quiz app contains a total of five-screen, the login screen where a user submits their email and password, the registration screen where new user register, the welcome screen where it shows three buttons which is attempt quiz, about this app, and logout, and last is the questions screen. Each question has 4 options once the user clicks on the option it will move to the next question. At the end score screen where you can check your score. For state management, we use the getX package."),
                    SizedBox(
                      height: 60,
                    ),

                    RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          'Go to Home Screen',
                        ),
                        textColor: Colors.white,
                        onPressed: () {
                          Get.to(HomeScreen());
                        }), // it will take 2/6 spaces
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
