import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      children: [
        const StatusTiles(
            image: "Assets/Images/obainho.jpg",
            text: "My Status",
            text2: "Today, 5:23 PM"),
        const SizedBox(height: 15),
        Row(
          children: [
            const Padding(padding: EdgeInsets.only(left: 10)),
            Text(
              "Recent Updates",
              style: GoogleFonts.sanchez(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                //color: Colors.white38,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const StatusTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Suarez",
            text2: "Just now"),
        const StatusTiles(
            image: "Assets/Images/loading.jpg",
            text: "Berbatov",
            text2: "16 minutes ago"),
        const StatusTiles(
            image: "Assets/Images/profile.jpg",
            text: "C. Ronaldo",
            text2: "23 minutes ago"),
        const StatusTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Rooney",
            text2: "34 minutes ago"),
        const StatusTiles(
            image: "Assets/Images/obainho.jpg",
            text: "K. Benzema",
            text2: "An hour ago"),
        const StatusTiles(
            image: "Assets/Images/loading.jpg",
            text: "Peter Crouch",
            text2: "Today, 3:18 PM"),
        const StatusTiles(
            image: "Assets/Images/profile.jpg",
            text: "L. Messi",
            text2: "Today, 3:06 PM"),
        const StatusTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Cavani",
            text2: "Today, 2:43 PM"),
        const StatusTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Ibrahimovic",
            text2: "Today, 1:46 PM"),
        const StatusTiles(
            image: "Assets/Images/obainho.jpg",
            text: "C. Tevez",
            text2: "Today, 1:25 PM"),
        const StatusTiles(
            image: "Assets/Images/loading.jpg",
            text: "Puyol",
            text2: "Today, 11:58 AM"),
        const StatusTiles(
            image: "Assets/Images/profile.jpg",
            text: "Haaland",
            text2: "Today, 11:34 AM"),
        const StatusTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Van Persie",
            text2: "Today, 10:27 AM"),
        const StatusTiles(
            image: "Assets/Images/loading.jpg",
            text: "Vidic",
            text2: "Yesterday, 10:48 PM"),
        const StatusTiles(
            image: "Assets/Images/profile.jpg",
            text: "McTominey",
            text2: "Yesterday, 9:32 PM"),
        const StatusTiles(
            image: "Assets/Images/obainho.jpg",
            text: "Pepe",
            text2: "Yesterday, 8:57 PM"),
        const StatusTiles(
            image: "Assets/Images/drawer.jpg",
            text: "Matic",
            text2: "Yesterday, 8:45 PM"),
      ],
    );
  }
}

class StatusTiles extends StatelessWidget {
  const StatusTiles({
    required this.image,
    required this.text,
    required this.text2,
  });
  final String image;
  final String text;
  final String text2;

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
        style: GoogleFonts.sanchez(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          //color: Color.fromARGB(255, 236, 238, 240),
        ),
      ),
      subtitle: Text(
        text2,
        style: GoogleFonts.sanchez(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          //color: Colors.white38,
        ),
      ),
    );
  }
}
