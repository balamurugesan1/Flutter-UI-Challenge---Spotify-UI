import 'package:flutter/material.dart';

class PlayListPage extends StatelessWidget {
  List<String> CoverList = [
    "https://wallpapercave.com/wp/wp6387895.jpg",
    "https://i.pinimg.com/originals/6f/d2/02/6fd20200e46c44b250295361b7e7821d.jpg",
    "https://assets.popbuzz.com/2019/02/how-tall-is-emma-mackey-1547403036-view-0.jpg",
    "https://assets.popbuzz.com/2019/02/how-tall-is-emma-mackey-1547403036-view-0.jpg",
    "https://i.pinimg.com/originals/6f/d2/02/6fd20200e46c44b250295361b7e7821d.jpg",
    "https://wallpapercave.com/wp/wp6387895.jpg",
  ];

  Widget ListItem(String CoverUrl, String AlbumTitle, String SingerName) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    child: Image.network(CoverUrl),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      AlbumTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      SingerName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Favorite Music",
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
                children: <Widget>[
                  ListItem(CoverList[0], "Money Heist", "Theme Song"),
                  ListItem(CoverList[1], "Game of Thrones", "Theme Song"),
                  ListItem(CoverList[2], "Sex Education", "Theme Song"),
                  ListItem(CoverList[3], "Sex Education", "Theme Song"),
                  ListItem(CoverList[4], "Game of Thrones", "Theme Song"),
                  ListItem(CoverList[5], "Money Heist", "Theme Song"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
