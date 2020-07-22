import 'package:book_app/consttants.dart';
import 'package:book_app/widgets/book_rating.dart';
import 'package:book_app/widgets/to_side_round_button.dart';
import 'package:flutter/material.dart';

Container bestOfTheDayCard(Size size, BuildContext context) {
  return Container(
    height: 205,
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding:
                EdgeInsets.only(left: 24, right: size.width * 0.35, top: 24),
            height: 185,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 20,
                      color: kShadowColor)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "New York TTime Best For 11th March 2020",
                  style: TextStyle(fontSize: 9, color: kLightBlackColor),
                ),
                Text(
                  "How To Win \nFriends & InFluence",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Gary Venchuk",
                  style: TextStyle(color: kLightBlackColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    BookRating(
                      score: 4.9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 10, color: kLightBlackColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Image.asset(
            "assets/images/book-1.png",
            height: size.width * 0.37,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
              //height: 40,
              width: size.width * 0.3,
              child: ToSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {},
              )),
        )
      ],
    ),
  );
}
