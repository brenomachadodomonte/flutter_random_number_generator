import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {

  int result = 100;
  int rangeInitial = 1;
  int rangeFinal = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Number'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white,),
            onPressed: (){
              _showDialogSetup(context);
            },
          )
        ],
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

  void _showDialogSetup(BuildContext context){

    final minController = TextEditingController();
    final maxController  = TextEditingController();

    minController.text = this.rangeInitial.toString();
    maxController.text = this.rangeFinal.toString();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text('Setup Range'),
          ),
          content: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      labelText: 'Min',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      border: OutlineInputBorder(),
                    ),

                    style: TextStyle(color: Colors.grey[700]),
                    controller: minController,
                    keyboardType: TextInputType.number,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  TextField(
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      labelText: 'Max',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(color: Colors.grey[700]),
                    controller: maxController,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 10.0,),
                  Divider(),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: FlatButton(
                          child: Text(
                            "CLOSE",
                            style: TextStyle(color: Theme.of(context).primaryColor),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: FlatButton(
                          child: Text(
                            "SETUP",
                            style: TextStyle(color: Theme.of(context).primaryColor),
                          ),
                          onPressed: () {
                            //setup range
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              )
          ),
        );
      },
    );
  }
}