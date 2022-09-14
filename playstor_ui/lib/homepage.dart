import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstor_ui/android/detailpage.dart';

import 'Ios/todaypage.dart';
import 'android/appspage.dart';
import 'android/top_apps.dart';
import 'globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<Widget> ios_tabs = [
    ToadyPage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Something went Wrong"),
        Icon(CupertinoIcons.exclamationmark),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Something went Wrong"),
        Icon(CupertinoIcons.exclamationmark),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Something went Wrong"),
        Icon(CupertinoIcons.exclamationmark),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Something went Wrong"),
        Icon(CupertinoIcons.exclamationmark),
      ],
    ),
  ];
  late TabController tabController;
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  int initialBottomNavigationBar = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return (Global.Val == false)
        ? MaterialApp(
            initialRoute: 'android_homepage',
            debugShowCheckedModeBanner: false,
            routes: {
              'homepage': (context) => HomePage(),
              'detailpage': (context) => DetailPage(),
            },
            home: Scaffold(
              drawer: Drawer(
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/sk.jpg'),
                    ),
                    SizedBox(height: 20),
                    Text("Android playstore to IOS Appstore"),
                    SizedBox(height: 20),
                    Switch(
                      activeColor: Colors.green,
                      value: Global.Val,
                      onChanged: (val) {
                        setState(() {
                          Global.Val = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 0,
                backgroundColor: Colors.white,
                title: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Search for apps & games",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_voice_outlined, color: Colors.black),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                bottom: TabBar(
                  labelColor: Color(0xff239a7e),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.black,
                  controller: tabController,
                  indicatorColor: const Color(0xff239a7e),
                  indicatorWeight: 3,
                  tabs: const [
                    Tab(text: "For You"),
                    Tab(text: "Top charts "),
                    Tab(text: "Categories"),
                    Tab(text: "Editors Choice"),
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                enableFeedback: true,
                fixedColor: Color(0xff239a7e),
                currentIndex: initialBottomNavigationBar,
                onTap: (val) {
                  setState(() {
                    pageController.animateToPage(
                      val,
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  });
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.apps, color: Color(0xff239a7e)),
                    label: "Apps",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.videogame_asset, color: Color(0xff239a7e)),
                    label: "Games",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.local_movies, color: Color(0xff239a7e)),
                    label: "Tv & Movies",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.book_outlined, color: Color(0xff239a7e)),
                    label: "Books",
                  ),
                ],
              ),
              body: TabBarView(
                controller: tabController,
                children: [
                  AppPage(),
                  TopAppsPage(),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Something went wrong"),
                        Icon(
                          Icons.error_outline,
                          size: 20,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Something went wrong"),
                        Icon(
                          Icons.error_outline,
                          size: 20,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                leading: Text(
                  "Appstore",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                trailing: CupertinoSwitch(
                  value: Global.Val,
                  onChanged: (val) {
                    setState(() {
                      Global.Val = val;
                    });
                  },
                ),
              ),
              child: CupertinoTabScaffold(
                tabBar: CupertinoTabBar(
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.today), label: 'Today'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.rocket_fill), label: 'Games'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.archivebox_fill),
                        label: 'Arcade'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.app_badge_fill),
                        label: 'Apps'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.search), label: 'Search'),
                  ],
                ),
                tabBuilder: (BuildContext context, index) {
                  return CupertinoTabView(
                    builder: (BuildContext context) {
                      return ios_tabs[index];
                    },
                  );
                },
              ),
            ),
          );
  }
}
