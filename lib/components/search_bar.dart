import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: TextField(
        cursorColor: Colors.black,
        cursorHeight: 20,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search_rounded, size: 26),
          hintText: 'search...',
          hintStyle: const TextStyle(fontSize: 16),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: BorderSide(color: Colors.green, width: 2.0)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
/**
 *  Container(
    color: Colors.grey,
    width: 200,
    child: Icon(
    Icons.search_rounded,
    color: Colors.grey,
    size: 28.0,
    ),
    )
 */
