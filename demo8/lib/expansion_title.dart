import 'package:flutter/material.dart';

class ExpansionTitleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion title'),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('Expansion tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('list tile'),
              subtitle: Text('subtitle'),
            )
          ],
          initiallyExpanded: true,
        ),
      ),
    );
  }
}
