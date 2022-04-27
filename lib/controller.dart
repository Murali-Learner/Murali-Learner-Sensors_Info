import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:separated_column/separated_column.dart';

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(50),
        color: Colors.blue,
        alignment: Alignment.center,
        child: SeparatedColumn(
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 20,
          ),
          children: [
            StreamBuilder(
              stream: accelerometerEvents.cast(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return Container(
                    child: Center(
                  child: Text(
                    snapshot.hasData ? snapshot.data.toString() : "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ));
              },
            ),
            StreamBuilder(
              stream: magnetometerEvents.cast(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return Container(
                    child: Center(
                  child: Text(
                    snapshot.hasData ? snapshot.data.toString() : "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ));
              },
            ),
            StreamBuilder(
              stream: userAccelerometerEvents.cast(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return Container(
                    child: Center(
                  child: Text(
                    snapshot.hasData ? snapshot.data.toString() : "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ));
              },
            ),
            StreamBuilder(
              stream: gyroscopeEvents.cast(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return Container(
                    child: Center(
                  child: Text(
                    snapshot.hasData ? snapshot.data.toString() : "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
