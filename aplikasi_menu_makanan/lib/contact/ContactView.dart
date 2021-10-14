import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ContactController.dart';

class ContactView extends State<ContactController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Hubungi kami'),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pushNamed('/'),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  color: Colors.orange,
                  child: Align(
                      alignment: Alignment.center,
                      child: Image.network(
                          'https://awsimages.detik.net.id/community/media/visual/2020/10/20/bukan-romantis-lampu-remang-remang-di-restoran-bikin-makanan-tak-enak_169.png?w=700&q=90',
                          // width: 300,
                          height: 270,
                          fit: BoxFit.fill))),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text('Restoran ABC\nNomor HP : 08123456789',
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ]),
          Row(
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
