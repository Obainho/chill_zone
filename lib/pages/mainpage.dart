import 'package:chill_zone/pages/status.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'call.dart';
import 'camera.dart';
import 'chat.dart';
import 'drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'None Clicked';
  GlobalKey<ScaffoldState> drawerkey = GlobalKey(); // Setting key for endDrawer

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        // Widget that makes TabBar to work
        length: 4, // sets the number of items in the TabBar
        initialIndex: 1,
        child: Scaffold(
          //backgroundColor: const Color.fromARGB(248, 19, 19, 19),
          key: drawerkey, // setting key for endDrawer
          endDrawer: const Drawer(
            child: DrawerPage(),
          ),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(239, 31, 32, 39),
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("Assets/Images/drawer.jpg"),
              ),
            ),
            title: Text(
              "ChillZone",
              style: GoogleFonts.robotoMono(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white38,
              ),
            ),
            actions: [
              IconButton(
                splashRadius: 20,
                icon: const Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.white38,
                ),
                onPressed: () {
                  setState(() {
                    drawerkey.currentState!.openEndDrawer();
                  });
                },
              ),
              IconButton(
                splashRadius: 20,
                icon: const Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.white38,
                ),
                onPressed: () {
                  setState(() {
                    text = 'Searching';
                  });
                },
              ),
              IconButton(
                splashRadius: 20,
                icon: const Icon(
                  Icons.more_vert_rounded,
                  size: 25,
                  color: Colors.white38,
                ),
                onPressed: () {
                  setState(() {
                    text = 'More Options';
                  });
                },
              ),
            ],
            bottom: const TabBar(
              labelColor: Color.fromARGB(255, 25, 124, 131),
              unselectedLabelColor: Colors.white38,
              indicatorColor: Color.fromARGB(255, 25, 124, 131),
              indicatorWeight: 3.0,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                    size: 25,
                    color: Colors.white38,
                  ),
                ),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            elevation: 40,
            onPressed: () {
              setState(() {
                text = 'New Chat';
              });
            },
            backgroundColor: const Color.fromARGB(255, 25, 124, 131),
            child: const Icon(
              Icons.chat,
              size: 25,
              color: Color.fromARGB(255, 236, 236, 241),
            ),
          ),
          body: const TabBarView(
            children: [
              CameraPage(),
              ChatPage(),
              StatusPage(),
              CallPage(),
            ],
          ),
        ),
      ),
    );
  }
}