import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:jobline/components/colors.dart';
import 'package:jobline/modals/jobs.dart';

class SuggestedJobsItem extends StatelessWidget {
  final Jobs jobs;

  SuggestedJobsItem(this.jobs);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
          color: jPrimary, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobs.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        jobs.company,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6), fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
              Icon(
                CupertinoIcons.bookmark,
                color: Colors.white.withOpacity(0.5),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 5, left: 13, bottom: 5, right: 13),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(7)),
                child: (Text(
                  'Design',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )),
              ),
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 100),
                  child: Container(
                    padding: const EdgeInsets.only(top: 5, left: 13, bottom: 5, right: 13),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: const [
                        Text('See #', style: TextStyle(color: Colors.white, fontSize: 13)),
                        Text('GeorgeFloyd', overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 13)),
                      ],
                    ),
                  ),
                ),
              ),
              /*Container(
                padding:
                    EdgeInsets.only(top: 5, left: 13, bottom: 5, right: 13),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(7)),
                child: (Text(
                  'Design',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 5, left: 13, bottom: 5, right: 13),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(7)),
                child: (Text('Full Time',
                    style: TextStyle(color: Colors.white, fontSize: 13))),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 5, left: 13, bottom: 5, right: 13),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(7)),
                child: (Text('Anywhere',
                    style: TextStyle(color: Colors.white, fontSize: 13))),
              )*/
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    CupertinoIcons.location,
                    size: 20,
                    color: Colors.white.withOpacity(0.6),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    jobs.location,
                    style: TextStyle(color: Colors.white.withOpacity(0.6)),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '\$',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(jobs.pay,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Text('/year',
                      style: TextStyle(color: Colors.white.withOpacity(0.5)))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
