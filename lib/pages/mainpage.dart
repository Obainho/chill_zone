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

  var alertMore = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: const BorderSide(
        width: 2,
        color: Colors.white,
      ),
    ),
    elevation: 10,
    title: Column(
      children: const [
        Text('More options'),
        Divider(
          height: 5,
          thickness: 2,
          endIndent: 10,
          indent: 10,
          color: Colors.black,
        ),
      ],
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        DialogTiles(text: 'New group'),
        DialogTiles(text: 'New broadcast'),
        DialogTiles(text: 'Linked devices'),
        DialogTiles(text: 'Starred messages'),
        DialogTiles(text: 'Settings'),
      ],
    ),
  );

  var snackSearch = const SnackBar(
    backgroundColor: Colors.blueGrey,
    content: Text('Search button pressed',),
    duration: Duration(seconds: 5),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ScaffoldMessenger.of(context).showSnackBar(snackSearch);
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
              showDialog(context: context, builder: (context) => alertMore);
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
    );
  }
}

class DialogTiles extends StatelessWidget {
  const DialogTiles({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: ListTile(
        title: Text(text),
      ),
    );
  }
}
