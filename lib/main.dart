import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sociaworld/helpers/helper_icons.dart';
import 'package:sociaworld/widget/profile_page.dart';
import 'package:sociaworld/widget/shipping_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Projem',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Colors.grey[100],
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: HelperIcons(Icons.menu, () {
          print("test");
        }),
        title: Text(
          "Sociaworld",
          style: TextStyle(color: Colors.grey, fontSize: 20.0),
        ),
        centerTitle: true,
        actions: [
          HelperIcons(
            Icons.notifications,
            () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        buildPaddingNotifications(
                          "Süreyya seni takip etti",
                          "1 saat önce",
                        ),
                        buildPaddingNotifications(
                          "Tuğba gönderine yorum yaptı",
                          "1 saat önce",
                        ),
                        buildPaddingNotifications(
                          "Mufi yorumunu beğendi",
                          "1 saat önce",
                        ),
                      ],
                    );
                  });
            },
            color: Colors.purple[300],
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                createProfileCard(
                  "Bayram Eren",
                  'Bayram',
                  "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2020/12/14/17/40/studying-5831644_1280.jpg",
                  "tag1",
                ),
                createProfileCard(
                  "Tuğba",
                  'teren',
                  "https://cdn.pixabay.com/photo/2016/12/19/21/36/winters-1919143_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2015/03/16/10/59/sunset-675847_1280.jpg",
                  "tag2",
                ),
                createProfileCard(
                  "Hatice",
                  "hatcec",
                  "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                  "tag3",
                ),
                createProfileCard(
                  "Cafer",
                  'cefcef',
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2014/05/03/00/56/summerfield-336672_1280.jpg",
                  "tag3",
                ),
                createProfileCard(
                  "Cumali",
                  'cali',
                  "https://cdn.pixabay.com/photo/2012/03/04/01/01/father-22194_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2014/05/03/00/56/summerfield-336672_1280.jpg",
                  "tag4",
                ),
                createProfileCard(
                  "Hafsa",
                  'hafayse',
                  "https://cdn.pixabay.com/photo/2015/02/04/08/03/baby-623417_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2016/09/21/04/46/barley-field-1684052_1280.jpg",
                  "tag5",
                ),
                createProfileCard(
                  "Mufi",
                  "mur",
                  "https://cdn.pixabay.com/photo/2013/10/16/14/04/polar-bear-196318_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2013/04/03/21/25/flower-100263_1280.jpg",
                  "tag6",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
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
          ShippingCard(
            name: "Tuğba EREN",
            shareTime: "3 gün önce",
            photoName: "Kazlar çok güzel değil mi?",
            profileUrl:
                "https://cdn.pixabay.com/photo/2016/12/19/21/36/winters-1919143_960_720.jpg",
            shareUrl:
                "https://cdn.pixabay.com/photo/2020/12/15/07/35/geese-5832933_960_720.jpg",
          ),
          ShippingCard(
            name: "Cumali",
            shareTime: "1 ay önce",
            photoName: "Geçen yaz çektim",
            profileUrl:
                "https://cdn.pixabay.com/photo/2012/03/04/01/01/father-22194_960_720.jpg",
            shareUrl:
                "https://cdn.pixabay.com/photo/2015/11/16/16/28/bird-1045954_960_720.jpg",
          ),
          ShippingCard(
            name: "Tuğba EREN",
            shareTime: "2 sene önce",
            photoName: "wawwww",
            profileUrl:
                "https://cdn.pixabay.com/photo/2016/12/19/21/36/winters-1919143_960_720.jpg",
            shareUrl:
                "https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_960_720.jpg",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding buildPaddingNotifications(String notifiName, String time) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            notifiName,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          Text(time),
        ],
      ),
    );
  }

  Widget createProfileCard(String userName, String user, String profileUrl,
      String coverUrl, String tag) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilePage(
                      userName: userName,
                      coverUrl: coverUrl,
                      profileUrl: profileUrl,
                      user: user,
                      tag: tag)));
        },
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
          ),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: user,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2.0, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                          image: NetworkImage(profileUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                userName,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
