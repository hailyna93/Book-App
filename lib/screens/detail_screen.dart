import 'package:book_app/consttants.dart';
import 'package:book_app/widgets/book_rating.dart';
import 'package:book_app/widgets/round_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
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
                                  style: Theme.of(context).textTheme.headline5,
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
                ),
              ],
            ),
          )
        ],
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

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                maxLines: 5,
                style: TextStyle(color: kLightBlackColor, fontSize: 10),
              ),
              SizedBox(
                height: 5,
              ),
              RoundedButton(
                text: "Read",
                press: () {},
                verticalPadding: 10,
              )
            ],
          ),
        ),
        Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            BookRating(
              score: 4.9,
            )
          ],
        )
      ],
    );
  }
}
