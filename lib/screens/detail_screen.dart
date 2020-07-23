import 'package:book_app/consttants.dart';
import 'package:book_app/widgets/book_info.dart';
import 'package:book_app/widgets/book_rating.dart';
import 'package:book_app/widgets/round_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: size.height * .5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: AssetImage(
                          "assets/images/bg.png",
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: size.height * .1,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                        children: [
                                          TextSpan(text: "Crushing &"),
                                          TextSpan(
                                              text: "Influence",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold))
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  BookInfo()
                                ],
                              ),
                            ),
                            Image.asset(
                              "assets/images/book-1.png",
                              height: 200,
                              fit: BoxFit.cover,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .5 - 30),
                  child: Column(
                    children: <Widget>[
                      ChapterCard(
                        name: "Money",
                        tag: "Life is about change",
                        chapterNumber: 1,
                        press: () {},
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ChapterCard(
                        name: "Money",
                        tag: "Life is about change",
                        chapterNumber: 1,
                        press: () {},
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ChapterCard(
                        name: "Money",
                        tag: "Life is about change",
                        chapterNumber: 1,
                        press: () {},
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ChapterCard(
                        name: "Money",
                        tag: "Life is about change",
                        chapterNumber: 1,
                        press: () {},
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline5,
                        children: [
                          TextSpan(text: "You might also "),
                          TextSpan(
                              text: "like ...",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 180,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    children: [
                                      TextSpan(text: "How To Win \n"),
                                      TextSpan(text: "Friends & Influence")
                                    ]),
                              ),
                              Text(
                                "Gary Venchuk",
                                style: TextStyle(color: kLightBlackColor),
                              ),
                              Row(
                                children: <Widget>[
                                  BookRating(
                                    score: 4.9,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RoundedButton(
                                    text: "Read",
                                    verticalPadding: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Image.asset("assets/images/book-2.png",
                            height: 150, fit: BoxFit.fill)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  const ChapterCard({
    Key key,
    this.name,
    this.tag,
    this.chapterNumber,
    this.press,
  }) : super(key: key);

  final String name, tag;
  final int chapterNumber;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 33,
                color: Color(0xFFD3D3D3).withOpacity(.84))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Chapter $chapterNumber: $name \n",
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "$tag", style: TextStyle(color: kLightBlackColor))
            ]),
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: press,
          )
        ],
      ),
    );
  }
}
