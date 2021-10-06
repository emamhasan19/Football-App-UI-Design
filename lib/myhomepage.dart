import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:ui_design/secondpage.dart';
import 'package:ui_design/signin.dart';
import 'package:ui_design/teamvsteam.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // PersistentTabController _controller =
  //     PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discover\nbest match",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black87),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepOrange[50],
                    ),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.deepOrange,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.deepOrange[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Today',
                          style: TextStyle(color: Colors.black87),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrange[50],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ),
                          );
                        },
                        child: Text(
                          'Upcoming',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Recently',
                          style: TextStyle(color: Colors.black87),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrange[50],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    "Sunday, September 12th",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black87),
                  ),
                ),
              ],
            ),
            teamvsteam(
              team1name: "Team Lion",
              team2name: "Team Tiger",
              team1logo: "images/out2.svg",
              team2logo: "images/out3.svg",
              time: "02:00 AM",
            ),
            teamvsteam(
              team1name: "Team Tiger",
              team2name: "Team Panda",
              team1logo: "images/out3.svg",
              team2logo: "images/out1.svg",
              time: "08:00 PM",
            ),
            teamvsteam(
              team1name: "Team Lion",
              team2name: "Team Tiger",
              team1logo: "images/out2.svg",
              team2logo: "images/out3.svg",
              time: "11:00 PM",
            ),
            teamvsteam(
              team1name: "Team Panda",
              team2name: "Team Lion",
              team1logo: "images/out1.svg",
              team2logo: "images/out2.svg",
              time: "11:00 PM",
            ),
            // PersistentTabView(
            //   context,
            //   controller: _controller,
            //   screens: _buildScreens(),
            //   items: _navBarsItems(),
            //   confineInSafeArea: true,
            //   backgroundColor: Colors.white, // Default is Colors.white.
            //   handleAndroidBackButtonPress: true, // Default is true.
            //   resizeToAvoidBottomInset:
            //       true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
            //   stateManagement: true, // Default is true.
            //   hideNavigationBarWhenKeyboardShows:
            //       true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
            //   decoration: NavBarDecoration(
            //     borderRadius: BorderRadius.circular(10.0),
            //     colorBehindNavBar: Colors.white,
            //   ),
            //   popAllScreensOnTapOfSelectedTab: true,
            //   popActionScreens: PopActionScreensType.all,
            //   itemAnimationProperties: ItemAnimationProperties(
            //     // Navigation Bar's items animation properties.
            //     duration: Duration(milliseconds: 200),
            //     curve: Curves.ease,
            //   ),
            //   screenTransitionAnimation: ScreenTransitionAnimation(
            //     // Screen transition animation on change of selected tab.
            //     animateTabTransition: true,
            //     curve: Curves.ease,
            //     duration: Duration(milliseconds: 200),
            //   ),
            //   navBarStyle: NavBarStyle
            //       .style1, // Choose the nav bar style with this property.
            // ),
          ],
        ),
      ),
    );
  }

  // List<Widget> _buildScreens() {
  //   return [
  //     SignInPage(),
  //     SecondPage(),
  //   ];
  // }

  // List<PersistentBottomNavBarItem> _navBarsItems() {
  //   return [
  //     PersistentBottomNavBarItem(
  //       icon: Icon(CupertinoIcons.home),
  //       title: ("Home"),
  //       activeColorPrimary: CupertinoColors.activeBlue,
  //       inactiveColorPrimary: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(CupertinoIcons.settings),
  //       title: ("Second"),
  //       activeColorPrimary: CupertinoColors.activeBlue,
  //       inactiveColorPrimary: CupertinoColors.systemGrey,
  //     ),
  //   ];
  // }
}
