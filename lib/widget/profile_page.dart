import 'package:flutter/material.dart';
import 'package:sociaworld/widget/shipping_card.dart';

class ProfilePage extends StatelessWidget {
  final String userName;
  final String user;
  final String profileUrl;
  final String coverUrl;
  final String tag;

  ProfilePage(
      {this.userName, this.user, this.profileUrl, this.coverUrl, this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 230.0,
                // color: Colors.yellow,
              ),
              Container(
                height: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        coverUrl,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 0.0,
                child: Hero(
                  tag: user,
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(profileUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(60.0),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 145.0,
                top: 190.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      user,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                right: 15.0,
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 18.0,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildColumn('20K', 'Takipçi'),
                buildColumn('500', 'Takip'),
                buildColumn('75', 'Paylaşım'),
              ],
            ),
          ),
          ShippingCard(
            name: "Bayram EREN",
            shareTime: "1 sene önce",
            photoName: "Geçen yaz çektim",
            profileUrl:
                "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_960_720.jpg",
            shareUrl:
                "https://cdn.pixabay.com/photo/2020/01/05/14/01/fallow-deer-4743238_960_720.jpg",
          ),
        ],
      ),
    );
  }

  Column buildColumn(String count, String headerName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buidText(
            name: count,
            size: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        buidText(
          name: headerName,
          size: 15.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey[600],
        ),
      ],
    );
  }

  Widget buidText(
      {String name, FontWeight fontWeight, double size, Color color}) {
    return Text(
      name,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: size,
        color: color,
      ),
    );
  }
}
