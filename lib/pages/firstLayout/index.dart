import 'package:flutter/material.dart';

class FirstLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FirstLayoutPageState();
}

class FirstLayoutPageState extends State<FirstLayoutPage> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    Widget _titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text('Kandersteg Switzerland',
                  style: TextStyle(color: Colors.grey[500]))
            ],
          )),
          IconButton(
              icon: _isFavorited ? Icon(Icons.star) : Icon(Icons.star_border),
              onPressed: () {
                setState(() {
                  _isFavorited = !_isFavorited;
                  _favoriteCount =
                      _isFavorited ? _favoriteCount += 1 : _favoriteCount -= 1;
                });
              },
              color: Colors.red[500]),
          SizedBox(
            width: 18,
            child: Text('$_favoriteCount'),
          )
        ],
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }

    Color color = Theme.of(context).backgroundColor;

    Widget _buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE')
        ],
      ),
    );

    Widget _textSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
            softWrap: true));

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter layout demo'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/firstLayout/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          _titleSection,
          _buttonSection,
          _textSection
        ],
      ),
    );
  }
}
