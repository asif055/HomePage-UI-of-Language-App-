import 'package:flutter/material.dart';
import 'package:theming_data/theme/my_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 365,
        child: Card(
          color: Colors.teal.withOpacity(0.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
          child: Stack(
            children:  [
              Positioned(
                top: 25,
                left: 20,
                child: Text(
                  '20 Point',
                  style:  MyTheme.lightTextTheme.headline1,
                ),
              ),
            const  Positioned(
                right: 40,
                top: 27,
                child: Icon(
                  Icons.wordpress_sharp,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 75,
                left: 20,
                child: Text(
                  'Learning English\n verb',
                  style:  MyTheme.lightTextTheme.headline2,
                ),
              ),
              Positioned(
                top: 90,
                right: 25,
                child: Text(
                  'Level 1',
                  style:  MyTheme.lightTextTheme.headline2,
                ),
              ),
              Positioned(
                bottom: 18,
                left: 20,
                child: Text(
                  '30 Minute',
                  style:  MyTheme.lightTextTheme.headline6,
                ),
              ),
              Positioned(
                bottom: 12,
                right: 25,
                child: Text(
                  'Date\n2022',
                  style:  MyTheme.lightTextTheme.headline3,
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
