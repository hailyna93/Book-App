import 'dart:ui';

import 'package:book_app/consttants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
            Container(
              width: 202,
              height: 245,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 221,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: kShadowColor)
                          ]),
                    ),
                  ),
                  Image.asset(
                    "assets/images/book-1.png",
                    height: 150,
                  ),
                  Positioned(
                    top: 35,
                    right: 10,
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(3, 7),
                                    blurRadius: 20,
                                    color: Color(0xFD3D3D3D).withOpacity(.5))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: kIconColor,
                                size: 15,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
