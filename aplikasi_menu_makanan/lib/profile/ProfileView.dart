import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ProfileController.dart';

class ProfileView extends State<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Robert - 20195520012'),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pushNamed('/'),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Row(
            //ROW 1
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  color: Colors.orange,
                  child: Align(
                      alignment: Alignment.center,
                      child: Image.network(
                          'https://media-exp1.licdn.com/dms/image/C5103AQG2SGWC6EIEcA/profile-displayphoto-shrink_800_800/0/1578645277160?e=1639612800&v=beta&t=x42JfoVHzcXp8y-eLXn00gYnYR0Xj6NPu4OFwjnlAgs',
                          // width: 300,
                          height: 270,
                          fit: BoxFit.fill))),
            ],
          ),
          Row(
              //ROW 2
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text('Robert',
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ]),
          Row(
              // ROW 3

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    color: Colors.green,
                    width: 410,
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      child: Text(
                        "A third-year student at Matana University, majoring in Computer Science with a strong passion for Web development and Mobile development. Develop a website with PHP framework Codeigniter and Laravel. I'm currently learning about cloud technology and back-end",
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                        maxLines: 10,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )),
              ]),
          Row(
              // ROW 4

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(12.0),
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 35,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.black,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 45.0, top: 4.0),
                  child: Text('1000 Vote',
                      style: TextStyle(fontSize: 25.0, color: Colors.black)),
                ),
              ]),
          Row(
              // ROW 5
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(12.0),
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 40.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    )),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 40.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.save,
                    color: Colors.black,
                    size: 40.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.restore_from_trash,
                    color: Colors.black,
                    size: 40.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 40.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
              ]),
        ])));
  }
}
