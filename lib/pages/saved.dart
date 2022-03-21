import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

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
                  margin: const EdgeInsets.only(left: 25, top: 40, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Center(
                            child: Text(
                              'Saved',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
