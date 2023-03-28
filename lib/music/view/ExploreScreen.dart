import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  @override
  Widget build(BuildContext context) {
    var playlistImg3;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900, shape: BoxShape.circle),
                      child: Icon(Icons.notification_add_outlined,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your favourite artist",
                        style: GoogleFonts.poppins(color: Colors.white)),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 120,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        singerBox(playlistImg3[index], playlistImg3[index]),
                    itemCount: playlistImg3.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recent played",
                        style: GoogleFonts.poppins(color: Colors.white)),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 160,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        songBox(playlistImg3[index], playlistImg3[index]),
                    itemCount: playlistImg3.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Made for you",
                        style: GoogleFonts.poppins(color: Colors.white)),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                  height: 160,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        songBox(playlistImg3[index], playlistImg3[index]),
                    itemCount: playlistImg3.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("From Best Actress",
                        style: GoogleFonts.poppins(color: Colors.white)),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                  height: 160,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        songBox(playlistImg3[index], playlistImg3[index]),
                    itemCount: playlistImg3.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget singerBox(String singerImg, String singerName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "${singerImg}",
                fit: BoxFit.cover,
              )),
        ),
        Text("${singerName}",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 11, letterSpacing: 1)),
      ],
    );
  }

  Widget songBox(String playlistImg, String playlistName) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 120,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "${playlistImg}",
                fit: BoxFit.cover,
              )),
        ),
        Text("${playlistName}",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 11, letterSpacing: 1)),
      ],
    );
  }
}
