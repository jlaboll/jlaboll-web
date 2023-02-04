import 'package:flutter/material.dart';

class AboutButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 300) {
          return SizedBox(
            width: constraints.maxWidth,
            child: _buildVerticalButtons(5),
          );
        } else {
          return SizedBox(
            width: constraints.maxWidth,
            child: _buildHorizontalButtons(15),
          );
        }
      },
    );
  }

  Widget _buildHorizontalButtons(double padding) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ElevatedButton(
            child: Text('Contact Me'),
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            child: Text('Download Resume'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildVerticalButtons(double padding) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          child: Text('Contact Me'),
          onPressed: () {},
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          child: Text('Download Resume'),
          onPressed: () {},
        ),
      ],
    );
  }
}
