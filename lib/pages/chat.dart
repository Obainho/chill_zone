import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      children: const [
        ChatTiles(
          image: "Assets/Images/obainho.jpg",
          text: "John Rambo",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "6:43 AM",
        ),
        ChatTiles(
          image: "Assets/Images/loading.jpg",
          text: "Peter Crouch",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "6:02 AM",
        ),
        ChatTiles(
          image: "Assets/Images/profile.jpg",
          text: "C. Ronaldo",
          subtitleIcon: false,
          text2: "Just another random text to...",
          text3: "5:34 AM",
        ),
        ChatTiles(
          image: "Assets/Images/profile.jpg",
          text: "Messi",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "5:29 AM",
        ),
        ChatTiles(
          image: "Assets/Images/obainho.jpg",
          text: "K. Benzema",
          subtitleIcon: false,
          text2: "Just another random text to...",
          text3: "yesterday",
        ),
        ChatTiles(
          image: "Assets/Images/profile.jpg",
          text: "Rooney",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "yesterday",
        ),
        ChatTiles(
          image: "Assets/Images/loading.jpg",
          text: "Berbatov",
          subtitleIcon: false,
          text2: "Just another random text to...",
          text3: "yesterday",
        ),
        ChatTiles(
          image: "Assets/Images/obainho.jpg",
          text: "Obainho",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "yesterday",
        ),
        ChatTiles(
          image: "Assets/Images/loading.jpg",
          text: "Luka Modric",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "yesterday",
        ),
        ChatTiles(
          image: "Assets/Images/profile.jpg",
          text: "Sancho",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "yesterday",
        ),
        ChatTiles(
          image: "Assets/Images/obainho.jpg",
          text: "Cavani",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "yesterday",
        ),
        ChatTiles(
          image: "Assets/Images/profile.jpg",
          text: "Giovani",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "7/9/22",
        ),
        ChatTiles(
          image: "Assets/Images/loading.jpg",
          text: "Jao Moutinho",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "7/9/22",
        ),
        ChatTiles(
          image: "Assets/Images/obainho.jpg",
          text: "Ferdinand",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "7/9/22",
        ),
        ChatTiles(
          image: "Assets/Images/loading.jpg",
          text: "All Stars Academy",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "6/9/22",
        ),
        ChatTiles(
          image: "Assets/Images/profile.jpg",
          text: "David DeGea",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "6/9/22",
        ),
        ChatTiles(
          image: "Assets/Images/loading.jpg",
          text: "Haaland",
          subtitleIcon: true,
          text2: "Just another random text to...",
          text3: "6/9/22",
        ),
        SizedBox(height: 50),
        Text(
          'Obainho Designs',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 180, 178, 178),
          ),
        ),
      ],
    );
  }
}

class ChatTiles extends StatelessWidget {
  const ChatTiles(
      {required this.image,
      required this.text,
      required this.subtitleIcon,
      required this.text2,
      required this.text3});
  final String image;
  final String text;
  final bool subtitleIcon;
  final String text2;
  final String text3;

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
                  Icons.checklist_rtl,
                  size: 15,
                  //color: Colors.white38,
                )
              : const Icon(
                  Icons.check,
                  size: 15,
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
      trailing: Text(
        text3,
        style: GoogleFonts.sanchez(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          //color: Colors.white38,
        ),
      ),
    );
  }
}
