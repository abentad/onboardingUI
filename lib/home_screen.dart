import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class HomePage extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("assets/images/Delivery.png"),
        title: "Fast Delivery",
        body:
            "Very Very i say it again Very fast delivery is provided by this company no one knows.",
        footer: Text('@Abdev'),
      ),
      PageViewModel(
        image: Image.asset("assets/images/Ontheway.png"),
        title: "On the way",
        body: "you will know where your order is in real time... JK",
        footer: Text('@Abdev'),
      ),
      PageViewModel(
        image: Image.asset("assets/images/Taken.png"),
        title: "Taken",
        body: "Your order might be Taken we DONOT hold responsibility.",
        footer: Text('@Abdev'),
      ),
      PageViewModel(
        image: Image.asset("assets/images/Yacht.png"),
        title: "Prize",
        body: "You might win a yacht by using our services... again JK",
        footer: Text('@Abdev'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done: Text("done"),
        onDone: () {},
        pages: getPages(),
        globalBackgroundColor: Colors.white,
      ),
    );
  }
}
