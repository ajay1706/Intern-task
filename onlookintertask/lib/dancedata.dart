import 'package:flutter/material.dart';


class DanceData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
           alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(top: 10,left: 10),
           child: Text("@loypaula",
           style: TextStyle(
             color: Colors.black,
             fontSize: 14,
             fontWeight: FontWeight.bold
           ),),
          ),
      Container(
        child: Text("@Excited about dance, show some love guys",
          maxLines: 2,
          softWrap: true,
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold
          ),),
        margin: EdgeInsets.only(top: 10,left: 10),

      ),
      Container(

        margin: EdgeInsets.only(top: 10,left: 10,bottom: 20),

        child: Row(

          children: <Widget>[

            Icon(Icons.data_usage,size: 50,color: Colors.white,),
            SizedBox(width: 10,),
            Column(
              children: <Widget>[
                Text("Dance India Dance",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text('2020 ',
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),),
            Text('view ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,

              ),)
          ],
        )

              ],
            ),
          ],
        ),
      ),
        ],

      ),
    );
  }
}
