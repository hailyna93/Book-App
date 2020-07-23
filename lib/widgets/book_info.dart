import 'package:book_app/consttants.dart';
import 'package:book_app/widgets/book_rating.dart';
import 'package:book_app/widgets/round_button.dart';
import 'package:flutter/material.dart';

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
