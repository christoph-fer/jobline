import 'package:flutter/cupertino.dart';
import 'package:jobline/modals/jobs.dart';
import 'package:jobline/widgets/recent_jobs_item.dart';
import 'package:jobline/widgets/section_header.dart';
import 'package:jobline/widgets/suggested_jobs_item.dart';

class RecentJobs extends StatelessWidget {
  final jobsList = Jobs.generateRecentJobs();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(margin: const EdgeInsets.only(left: 25, right: 25),child: SectionHeader('Recent Jobs', 'View all')),
        SizedBox(
          height: 310,
          child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 25, right: 25),
              scrollDirection: Axis.vertical,
              itemCount: jobsList.length,
              itemBuilder: (context, index) => RecentJobsItem(jobsList[index]),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              )),
        )
      ],
    );
  }
}
