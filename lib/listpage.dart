import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  final String title;

  ListPage({Key key, this.title}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final makeBottom = Container(
    height: 55.0,
    child: BottomAppBar(
      color: Color.fromRGBO(58, 66, 86, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.blur_on,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.hotel,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_box, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final toAppBar = AppBar(
      centerTitle: true,
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );

    final makeListTile = ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: BoxDecoration(
          border: Border(right: BorderSide(width: 1.0, color: Colors.white)),
        ),
        child: Icon(
          Icons.autorenew,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Introduccing to Driving",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: <Widget>[
          Icon(Icons.linear_scale, color: Colors.yellow),
          Text(
            " Intermediate",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
        size: 25.0,
      ),
    );

    final makeCard = Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile,
      ),
    );

    final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return makeCard;
        },
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: toAppBar,
      bottomNavigationBar: makeBottom,
      body: makeBody,
    );
  }
}
