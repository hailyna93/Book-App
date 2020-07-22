import 'package:book_app/consttants.dart';
import 'package:flutter/material.dart';

class ContinuReading extends StatelessWidget {
  const ContinuReading({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 33,
                color: Color(0xFFD3D3D3).withOpacity(.84))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Crushing & Influence",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Gary Venchuk",
                            style: TextStyle(color: kLightBlackColor),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Chapter 7 of 10",
                              style: TextStyle(
                                  fontSize: 10, color: kLightBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/book-1.png",
                      width: 55,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 7,
              width: size.width * 0.65,
              decoration: BoxDecoration(
                  color: kProgressIndicator,
                  borderRadius: BorderRadius.circular(7)),
            )
          ],
        ),
      ),
    );
  }
}
