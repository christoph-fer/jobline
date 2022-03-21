import 'package:flutter/cupertino.dart';
import 'package:jobline/modals/jobs.dart';
import 'package:jobline/widgets/section_header.dart';
import 'package:jobline/widgets/suggested_jobs_item.dart';

class SuggestedJobs extends StatelessWidget {
  final jobsList = Jobs.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: SectionHeader('Suggested Jobs', 'View all')),
        SizedBox(
          height: 180,
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 25, right: 25),
              scrollDirection: Axis.horizontal,
              itemCount: jobsList.length,
              itemBuilder: (context, index) =>
                  SuggestedJobsItem(jobsList[index]),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  )),
        )
      ],
    );
  }
}
