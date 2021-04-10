import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/favorite_widget.dart';

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Japan, Schule"),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _builTopImage(),
          Center(
            child: Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: _buildRating(),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: _buildAction(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: _buildDescription(),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  Widget _builTopImage() => Container(
        height: 300,
        child: Card(
          elevation: 5,
          margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
          child: Image.asset(
            'assets/images/tree.png',
            fit: BoxFit.fill,
          ),
        ),
      );

  Widget _buildRating() => ListTile(
        title: Text(
          "Tree",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
          ),
        ),
        subtitle: Text("im Sommer"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FavoriteWidget(),
          ],
        ),
      );

  Widget _buildAction() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildButton('Name', Icons.star, Colors.blue[100]),
          _buildButton('Name', Icons.access_time, Colors.blue[100]),
          _buildButton('Name', Icons.school, Colors.blue[100]),
        ],
      );

  Widget _buildButton(String label, IconData icon, Color color) => Column(
        children: [
          Icon(icon),
          Container(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );

  Widget _buildDescription() => Text(
        'aaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbb'
        'cccccccccccccccccccccccccccccccc',
        softWrap: true,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18.0,
        ),
      );
}
