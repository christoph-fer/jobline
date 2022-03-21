import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobline/components/colors.dart';
import 'package:jobline/widgets/recent_jobs.dart';
import 'package:jobline/widgets/search.dart';
import 'package:jobline/widgets/section_header.dart';
import 'package:jobline/widgets/suggested_jobs.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            //margin: const EdgeInsets.only(left: 25, top: 25, right: 25),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25, top: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: jForeground,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'J',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Center(
                            child: Text(
                              'Jobline',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: jForeground,
                        ),
                        child: const Center(
                            child: Icon(
                          CupertinoIcons.bell,
                          size: 28,
                        )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: const SearchBar()),
                SuggestedJobs(),
                RecentJobs()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
