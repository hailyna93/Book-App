import 'dart:ui';
import 'package:book_app/screens/detail_screen.dart';
import 'package:book_app/widgets/best_of_the_day_card.dart';
import 'package:book_app/widgets/continu_reading.dart';
import 'package:book_app/widgets/reading_list_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                  image: AssetImage("assets/images/main_page_bg.png"))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: size.height * .1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: "What are you \nreading"),
                        TextSpan(
                            text: " today?",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ReadingListCard(
                      image: "assets/images/book-1.png",
                      title: "Crushing & Influence",
                      auth: "Gary Venchuck",
                      rating: 4.9,
                      pressDetail: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          )),
                    ),
                    ReadingListCard(
                      image: "assets/images/book-2.png",
                      title: "Top 10 Business Hacks",
                      auth: "Gary Venchuck",
                      rating: 4.9,
                    ),
                    ReadingListCard(
                      image: "assets/images/book-3.png",
                      title: "How To & Influence",
                      auth: "Gary Venchuck",
                      rating: 4.9,
                    ),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline5,
                          children: [
                            TextSpan(text: "Best of the "),
                            TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                    ),
                    bestOfTheDayCard(size, context),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline5,
                          children: [
                            TextSpan(text: "Continue "),
                            TextSpan(
                                text: "reading...",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                      width: double.infinity,
                    ),
                    ContinuReading(size: size),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
