import 'package:book_app/consttants.dart';
import 'package:book_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Book App",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kBlackColor)),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/Bitmap.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline3,
                  children: [
                    TextSpan(
                      text: "flamin",
                    ),
                    TextSpan(
                        text: "go.",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: RoundedButton(
                text: "start reading",
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.verticalPadding = 16,
    this.fontSize = 16,
  }) : super(key: key);

  final String text;
  final Function press;
  final double verticalPadding;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16),
        padding:
            EdgeInsets.symmetric(horizontal: 30, vertical: verticalPadding),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  offset: Offset(1, 15),
                  blurRadius: 30,
                  color: Color(0xFF666666).withOpacity(.11))
            ]),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
        ),
      ),
    );
  }
}
