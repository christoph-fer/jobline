import 'package:flutter/cupertino.dart';
import 'package:jobline/components/colors.dart';

class SectionHeader extends StatelessWidget {
  final String sectionTitle;
  final String sectionAction;

  SectionHeader(this.sectionTitle, this.sectionAction);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              sectionTitle,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: jPrimaryText
            ),
          ),
          Text(sectionAction,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: jSecondaryText
            ),
          )
        ],
      ),
    );
  }
}
