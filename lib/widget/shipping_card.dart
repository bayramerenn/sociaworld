import 'package:flutter/material.dart';
import 'package:sociaworld/helpers/helper_icons.dart';

class ShippingCard extends StatelessWidget {
  final String name;
  final String shareTime;
  final String photoName;
  final String profileUrl;
  final String shareUrl;

  ShippingCard(
      {this.name,
      this.shareTime,
      this.photoName,
      this.profileUrl,
      this.shareUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.circular(12.0),
        elevation: 1.0,
        child: Container(
            padding: EdgeInsets.all(15.0),
            width: double.infinity,
            height: 390.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 2.0, color: Colors.grey),
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: NetworkImage(profileUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              shareTime,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    HelperIcons(
                      Icons.more_vert,
                      () {},
                      color: Colors.black,
                      size: 25,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  photoName,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Image.network(
                  shareUrl,
                  width: double.infinity,
                  height: 210.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkwellButton(Icons.favorite, "Beğen", () {
                      print("beğen");
                    }),
                    InkwellButton(Icons.insert_comment, "Yorum Yap", () {
                      print("Yorum");
                    }),
                    InkwellButton(Icons.share, "Paylaş", () {
                      print("Yorum");
                    }),
                    // FlatButton.icon(
                    //     onPressed: () {},
                    //     icon: Icon(
                    //       Icons.share,
                    //       color: Colors.grey,
                    //     ),
                    //     label: Text(
                    //       "Paylaş",
                    //       style: TextStyle(
                    //           color: Colors.grey, fontWeight: FontWeight.bold),
                    //     ))
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class InkwellButton extends StatelessWidget {
  final IconData icon;
  final String buttonName;
  final Function myFunc;
  InkwellButton(this.icon, this.buttonName, this.myFunc);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: myFunc,
        child: Container(
          padding: EdgeInsets.all(6.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.grey,
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                buttonName,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
