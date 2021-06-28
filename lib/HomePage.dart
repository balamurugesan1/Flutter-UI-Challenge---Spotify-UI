import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<String> CoverList = [
    "https://wallpapercave.com/wp/wp6387895.jpg",
    "https://i.pinimg.com/originals/6f/d2/02/6fd20200e46c44b250295361b7e7821d.jpg",
    "https://assets.popbuzz.com/2019/02/how-tall-is-emma-mackey-1547403036-view-0.jpg",
    "https://assets.popbuzz.com/2019/02/how-tall-is-emma-mackey-1547403036-view-0.jpg",
    "https://i.pinimg.com/originals/6f/d2/02/6fd20200e46c44b250295361b7e7821d.jpg",
    "https://wallpapercave.com/wp/wp6387895.jpg",
  ];
  Widget AlbumContainer(String CoverUrl, String CoverName, String SingerName) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                  height: 140.0, width: 140.0, child: Image.network(CoverUrl)),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              CoverName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 18.0),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              SingerName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended for you",
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AlbumContainer(CoverList[0], "Money Heist", "Theme Song"),
                  SizedBox(
                    width: 28.0,
                  ),
                  AlbumContainer(CoverList[1], "Game of Thrones", "Theme Song"),
                  SizedBox(
                    width: 28.0,
                  ),
                  AlbumContainer(CoverList[2], "SexEducation", "Theme Song"),
                  SizedBox(
                    width: 28.0,
                  ),
                ],
              ),
            ),
            Text(
              "New Music",
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AlbumContainer(CoverList[3], "SexEducation", "Theme Song"),
                  SizedBox(
                    width: 28.0,
                  ),
                  AlbumContainer(CoverList[4], "Game of Thrones", "Theme Song"),
                  SizedBox(
                    width: 28.0,
                  ),
                  AlbumContainer(CoverList[5], "Money Heist", "Theme Song"),
                  SizedBox(
                    width: 28.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
