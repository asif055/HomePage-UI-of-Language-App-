import 'package:flutter/material.dart';
import 'package:theming_data/components/list_of_instructor.dart';
import './components/search_bar.dart';
import './theme/my_theme.dart';
import './components/profile.dart';
import './components/card1.dart';
import 'components/list_of_course.dart';

class HomeLanguage extends StatelessWidget {
  const HomeLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTheme.appBarColor,
        title: const Text('Asif App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Profile(),
            const SizedBox(height: 12),
            const SearchBar(),
            const SizedBox(height: 14),
            const Card1(),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended Course',
                    style: MyTheme.darkTextTheme.headline2,
                  ),
                  Text(
                    'View all',
                    style: MyTheme.darkTextTheme.headline3,
                  )
                ],
              ),
            ),
            const SizedBox(height: 14.0),
            ListOfCourse(),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text('Instructor', style: MyTheme.darkTextTheme.headline6),
                ],
              ),
            ),
            const SizedBox(height: 14.0),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 8.0),
              child: ListOfInstructor(),
            ),


          ],
        ),
      ),
    );
  }
}
