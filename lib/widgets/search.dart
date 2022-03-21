import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobline/components/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //margin: EdgeInsets.all(25),

          decoration: BoxDecoration(
              border:
                  Border.all(color: jBorder.withOpacity(0.3), width: 2),
              borderRadius: BorderRadius.circular(20)),
          child: const TextField(
            cursorColor: jPrimary,
            style: TextStyle(
              fontSize: 18
            ),
            decoration: InputDecoration(
                //fillColor: kFontLight.withOpacity(0.1),
                //filled: true,
                contentPadding: EdgeInsets.only(left: 50, top: 20, bottom: 20),
                border: InputBorder.none,
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.black26)),
          ),
        ),
        const Positioned(
          left: 15,
          top: 13,
          height: 40,
          child: Center(
            child: Icon(
              CupertinoIcons.search,
              color: Colors.black,
              size: 25.0,
            ),
          ),
        ),
        const Positioned(
          right: 15,
          top: 13,
          height: 40,
          child: Center(
            child: Icon(
              CupertinoIcons.slider_horizontal_3,
              color: jBorder,
              size: 25.0,
            ),
          ),
        ),
      ],
    );
  }
}
