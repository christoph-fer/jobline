import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobline/components/colors.dart';
import 'package:jobline/pages/home.dart';
import 'package:jobline/pages/message.dart';
import 'package:jobline/pages/profile.dart';
import 'package:jobline/pages/saved.dart';

void main() {
  runApp(const MyApp());

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jobline',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.indigo,

        primaryColor: const Color(0xFF2969ff),
        accentColor: const Color(0xFF2969ff),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const SavedPage(),
    const MessagePage(),
    const ProfilePage()
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: SizedBox(
        //height: 120,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: jPrimary,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: true,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          showUnselectedLabels: true,
          elevation: 50,
          items: const [
            BottomNavigationBarItem(title:Text("Home"), icon: Icon(CupertinoIcons.house_alt_fill)),
            BottomNavigationBarItem(title:Text("Saved"),icon: Icon(CupertinoIcons.bookmark_solid)),
            BottomNavigationBarItem(title:Text("Messages"),icon: Icon(CupertinoIcons.text_bubble_fill)),
            BottomNavigationBarItem(title:Text("Profile"),icon: Icon(CupertinoIcons.person_fill)),
          ],
        ),
      ),
    );
  }
}


