import 'package:flutter/material.dart';

import '../model/data.dart';
import '../theme/my_theme.dart';

class ListOfInstructor extends StatelessWidget {
  ListOfInstructor({Key? key}) : super(key: key);
  List<InstructorItem> items = [
    InstructorItem(
        name: 'Alex Carry',
        subtitle: 'Visual Designer',
        instructorProfile: 'assets/picture/instructor1.jpg'),
    InstructorItem(
        name: 'Smith Jeo',
        subtitle: 'Mobile dev',
        instructorProfile: 'assets/picture/instructor2.jpg'),
    InstructorItem(
        name: 'Mahmud Poluo',
        subtitle: 'Website dev',
        instructorProfile: 'assets/picture/instructor3.jpg'),
    InstructorItem(
        name: 'Asif',
        instructorProfile: 'assets/picture/instructor4.png',
        subtitle: 'Flutter dev')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (context, _) => const SizedBox(width: 12.0),
          itemBuilder: (context, index) =>
              buildInstructorCard(item: items[index])),
    );
  }
}

Widget buildInstructorCard({required InstructorItem item}) {
  return Container(
    width: 160,
    child: Expanded(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12)),
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: Stack(
            children: [
              Expanded(
                child: Image(
                  image: AssetImage(item.instructorProfile),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 65,
                left: 30,
                child: Text(
                  item.name,
                  style: MyTheme.lightTextTheme.headline3,
                  textAlign: TextAlign.start,
                ),
              ),
              Positioned(
                bottom: 40,
                left: 30,
                child: Text(
                  item.subtitle,
                  style: MyTheme.lightTextTheme.bodyText1,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
