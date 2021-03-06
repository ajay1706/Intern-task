import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Following",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text("|",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text("For you",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
  itemCount: 10,
      itemBuilder: (context, position) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            colorFilter: ColorFilter.srgbToLinearGamma(),
            image: AssetImage(
              "assets/images/pic.jpg",
            ),
            fit: BoxFit.cover,
          )),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[
                header(),
                CenterPart(),
                BottomNavBar(),
              ],
            ),
          ),
        );
      }
    );
  }
}



bool isCLicked = false;
var voteHere = "vote";
var dance = "Dance India Dance";
var year  = "2020";
var link = "view";

class CenterPart extends StatefulWidget {


  @override
  _CenterPartState createState() => _CenterPartState();
}

class _CenterPartState extends State<CenterPart> {

  Widget socailActions({String title, IconData icon}) {
    return Container(
      height: 60,
      width: 60,
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget userAction() {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: <Widget>[
          Positioned(
              right: 10,
              child: Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/pic.jpg'),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
              )),
          Positioned(
              left: 25,
              bottom: 0,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.add,
                  size: 25,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }

  Widget _voteButton() {
    return Container(
      margin: EdgeInsets.only(right: 10),

      child: ButtonTheme(
        height: 20,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: FlatButton(
          color: Colors.white12,
          onPressed:  () {
            setState((){
              year = "Standup";
              link = "";
              voteHere = "22.8k";
            });
          },
          child: Padding(

            padding: const EdgeInsets.all(8.0),
            child: Text(voteHere,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey

              ),),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "@loypaula",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          "@Excited about dance, show some love guys",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        margin: EdgeInsets.only(top: 10, left: 10),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10, bottom: 20),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.data_usage,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  "$dance",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Text(
                                      "$year",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "$link",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              width: 100,
              child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                userAction(),
                socailActions(icon: Icons.remove_red_eye, title: "500K"),
                socailActions(icon: Icons.message, title: "1234"),
                socailActions(icon: Icons.reply, title: "Share"),
                _voteButton()
              ]),
            )
          ],
        ));
  }
}
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset(
          'assets/icons/home.png',
          color: Colors.white,
        ),
        Image.asset('assets/icons/play.png', height: 25, color: Colors.white),
        Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
        Image.asset(
          'assets/icons/person.png',
          color: Colors.white,
          height: 30,
        )
      ]),
    );
  }
}
