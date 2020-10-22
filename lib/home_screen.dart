import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboard_ui/main_screen.dart';

class HomePage extends StatelessWidget {
  final pageDecoration = PageDecoration(
    titleTextStyle: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    ),
    bodyTextStyle: TextStyle(
      fontWeight: FontWeight.w500,
    ),
    descriptionPadding: EdgeInsets.symmetric(horizontal: 20.0),
    imageFlex: 2,
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("assets/images/Delivery.png"),
        title: "Fast Delivery",
        body:
            "Very Very i say it again Very fast delivery is provided by this company no one knows.",
        footer: Text(
          '@Abdev',
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset("assets/images/Ontheway.png"),
        title: "On the way",
        body: "you will know where your order is in real time... JK",
        footer: Text(
          '@Abdev',
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset("assets/images/Taken.png"),
        title: "Taken",
        body: "Your order might be Taken we DONOT hold responsibility.",
        footer: Text(
          '@Abdev',
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset("assets/images/Yacht.png"),
        title: "Prize",
        body: "You might win a yacht by using our services... again JK",
        footer: Text(
          '@Abdev',
        ),
        decoration: pageDecoration,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        //the done button that is going to be shown at the end
        done: Text(
          "Done",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),

        //the skip button notice the showskipbutton has to be set to true in order
        //for it to appear on screen unlike the done button
        skip: Text(
          "Skip",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        showSkipButton: true,

        //the next button that is goint to appear on screen if the shownextbutton is true
        next: Text("Next"),
        showNextButton: true,

        //call back funciton that happens when the done button is pressed
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainPage(),
            ),
          );
        },

        //gets the pages from pageviewmodel list above
        pages: getPages(),

        //sets the background color
        globalBackgroundColor: Colors.white,

        //used for animation
        curve: Curves.decelerate,
        animationDuration: 350,

        //decoraiton example for the dots for navigation
        dotsDecorator: DotsDecorator(
          shape: StadiumBorder(),
          activeShape: StadiumBorder(),
          activeColor: Colors.purple,
          color: Colors.blue,
          spacing: EdgeInsets.symmetric(horizontal: 5.0),
        ),
      ),
    );
  }
}
