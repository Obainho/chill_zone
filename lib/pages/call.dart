import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      children: const [
        CallTiles(
          image: "Assets/Images/profile.jpg",
          text: "C. Ronaldo",
          subtitleIcon: true,
          text2: "Today, 4:37 PM",
          trailingIcon: true,
        ),
        CallTiles(
            image: "Assets/Images/obainho.jpg",
            text: "K. Benzema",
            subtitleIcon: true,
            text2: "Today, 2:34 PM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/loading.jpg",
            text: "Ibrahimovic",
            subtitleIcon: false,
            text2: "Today, 11:29 AM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Cavani",
            subtitleIcon: true,
            text2: "Today, 7:53 AM",
            trailingIcon: false),
        CallTiles(
            image: "Assets/Images/loading.jpg",
            text: "Ibrahimovic",
            subtitleIcon: false,
            text2: "Yesterday, 10:21 PM",
            trailingIcon: false),
        CallTiles(
            image: "Assets/Images/obainho.jpg",
            text: "K. Benzema",
            subtitleIcon: false,
            text2: "Yesterday, 8:27 PM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/loading.jpg",
            text: "Ibrahimovic",
            subtitleIcon: true,
            text2: "Yesterday, 4:19 PM",
            trailingIcon: false),
        CallTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Cavani",
            subtitleIcon: false,
            text2: "Yesterday, 10:26 AM",
            trailingIcon: false),
        CallTiles(
            image: "Assets/Images/obainho.jpg",
            text: "K. Benzema",
            subtitleIcon: true,
            text2: "Yesterday, 7:43 AM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Cavani",
            subtitleIcon: false,
            text2: "July 17, 9:43 PM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/obainho.jpg",
            text: "K. Benzema",
            subtitleIcon: true,
            text2: "July 17, 9:22 PM",
            trailingIcon: false),
        CallTiles(
            image: "Assets/Images/loading.jpg",
            text: "Ibrahimovic",
            subtitleIcon: false,
            text2: "July 17, 7:18 PM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Cavani",
            subtitleIcon: false,
            text2: "July 17, 9:48 AM",
            trailingIcon: false),
        CallTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Cavani",
            subtitleIcon: true,
            text2: "July 16, 11:23 PM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/loading.jpg",
            text: "Ibrahimovic",
            subtitleIcon: false,
            text2: "July 16, 8:15 PM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/obainho.jpg",
            text: "K. Benzema",
            subtitleIcon: true,
            text2: "July 16, 9:12 AM",
            trailingIcon: false),
        CallTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Cavani",
            subtitleIcon: true,
            text2: "July 16, 9:06 AM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Cavani",
            subtitleIcon: true,
            text2: "July 15, 8:23 PM",
            trailingIcon: false),
        CallTiles(
            image: "Assets/Images/obainho.jpg",
            text: "K. Benzema",
            subtitleIcon: true,
            text2: "July 15, 3:42 PM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/loading.jpg",
            text: "Ibrahimovic",
            subtitleIcon: true,
            text2: "July 15, 12:19 PM",
            trailingIcon: true),
        CallTiles(
            image: "Assets/Images/obainho.jpg",
            text: "K. Benzema",
            subtitleIcon: true,
            text2: "July 12, 4:37 PM",
            trailingIcon: false),
        CallTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Cavani",
            subtitleIcon: true,
            text2: "July 12, 11:41 AM",
            trailingIcon: false),
      ],
    );
  }
}

class CallTiles extends StatelessWidget {
  const CallTiles(
      {required this.image,
      required this.text,
      required this.subtitleIcon,
      required this.text2,
      required this.trailingIcon});
  final String image;
  final String text;
  final bool subtitleIcon;
  final String text2;
  final bool trailingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          image,
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          //color: Color.fromARGB(255, 236, 238, 240),
        ),
      ),
      subtitle: Row(
        children: [
          subtitleIcon
              ? const Icon(
                  Icons.keyboard_double_arrow_up,
                  size: 20,
                  //color: Colors.white38,
                )
              : const Icon(
                  Icons.keyboard_double_arrow_down,
                  size: 20,
                  //color: Colors.white38,
                ),
          const SizedBox(width: 5),
          Text(
            text2,
            style: GoogleFonts.sanchez(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              //color: Colors.white38,
            ),
          ),
        ],
      ),
      trailing: trailingIcon
          ? const Icon(
              Icons.phone,
              size: 30,
              color: Color.fromARGB(255, 25, 124, 131),
            )
          : const Icon(
              Icons.videocam,
              size: 30,
              color: Color.fromARGB(255, 25, 124, 131),
            ),
    );
  }
}
