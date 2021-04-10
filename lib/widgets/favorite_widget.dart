import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  int _favoritedCount = 122;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon:
              _isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          onPressed: _toggleFavorite,
          color: Colors.red,
        ),
        SizedBox(
          width: 40,
          child: Container(
            child: Text('$_favoritedCount'),
          ),
        )
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoritedCount -= 1;
      } else {
        _isFavorited = true;
        _favoritedCount += 1;
      }
    });
  }
}
