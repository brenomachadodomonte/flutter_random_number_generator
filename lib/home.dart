import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  int result = 100;
  int rangeInitial = 1;
  int rangeFinal = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Number'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Range ${rangeInitial} to ${rangeFinal}', style: TextStyle(color: Colors.grey, fontSize: 18)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(result.toString(), style: TextStyle(color: Colors.grey, fontSize: 60)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton.extended(
                  label: Text('Generate', style: TextStyle(color: Colors.white),),
                  icon: Icon(Icons.play_arrow, color: Colors.white),
                  onPressed: (){
                    //Generate Ramdom Number
                    print('Generate Ramdom Number');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}