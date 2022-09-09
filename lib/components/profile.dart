import 'package:flutter/material.dart';
import 'package:theming_data/theme/my_theme.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 10.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage:  AssetImage('assets/picture/profileman.png'),
          ),
        ),
        const SizedBox(width: 25.0),
        Text('Hello Asif', style: MyTheme.darkTextTheme.headline2,)
      ],
    );
  }
}
