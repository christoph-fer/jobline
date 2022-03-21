import 'package:flutter/cupertino.dart';
import 'package:jobline/components/colors.dart';
import 'package:jobline/modals/jobs.dart';

class RecentJobsItem extends StatelessWidget {
  final Jobs jobs;

  RecentJobsItem(this.jobs);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 80,
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
          color: jForeground, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: jPrimary, borderRadius: BorderRadius.circular(13)),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jobs.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: jPrimaryText,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        jobs.company,
                        style: TextStyle(color: jSecondaryText, fontSize: 13),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '•',
                        style: TextStyle(color: jSecondaryText, fontSize: 13),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        jobs.location,
                        style: TextStyle(color: jSecondaryText, fontSize: 13),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Icon(
            CupertinoIcons.ellipsis_vertical,
            color: jSecondaryText,
          )
        ],
      ),
    );
  }
}
