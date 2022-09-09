import 'package:flutter/material.dart';
import 'package:theming_data/theme/my_theme.dart';

import '../model/data.dart';

class ListOfCourse extends StatelessWidget {
  ListOfCourse({Key? key}) : super(key: key);

  List<CardItem> items = [
    CardItem(title: 'China', urlImage: 'assets/picture/china.png'),
    CardItem(title: 'Saudi', urlImage: 'assets/picture/saudi.png'),
    CardItem(title: 'Australia', urlImage: 'assets/picture/australia.png'),
    CardItem(title: 'Pakistan', urlImage: 'assets/picture/pakistan.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (context, _) => const SizedBox(
                  width: 12.0,
                ),
            itemBuilder: (context, index) => buildCard(item: items[index])),
      ),
    );
  }
}

Widget buildCard({required CardItem item}) {
  return Container(
    width: 150,
    // color: Colors.grey,
    child: Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: Image(
                  image: AssetImage(item.urlImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            item.title,
            style: MyTheme.darkTextTheme.bodyText1, textAlign: TextAlign.start,
          ),
        ],
      ),
    ),
  );
}
