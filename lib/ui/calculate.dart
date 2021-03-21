import 'package:estim8/model/data.dart';
import 'package:estim8/model/user.dart';
import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  final Project project; // receives the value
  final int uICost;
  final int uITime;
  const Calculate({Key key, this.project, this.uICost, this.uITime})
      : super(key: key);
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  // project = widget.project in this widget.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, "/optimization");
                  },
                  child: Icon(
                    Icons.settings,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton.extended(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, "/help");
                  },
                  label: Text(
                    "Mali ve Teknik Destek",
                    style: TextStyle(
                      color: Colors.yellow,
                    ),
                  ),
                ))
          ],
        ),
        appBar: AppBar(
            backgroundColor: Colors.black, title: Text("Hesaplama Sonuçları")),
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: Column(children: [
                  costBox(),
                  Divider(
                    height: MediaQuery.of(context).size.height * 0.05,
                    color: Colors.transparent,
                  ),
                  timeBox()
                ]))
              ],
            ),
          ),
        ));
  }

  Widget costBox() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Center(
                      child: Text(
                        "Tasarım Maliyeti",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Center(
                      child: Text(
                        "Geliştirme Maliyeti",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.2,
            color: Color.fromRGBO(246, 231, 29, 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                    "${widget.uICost.toInt()} TL",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                    "${(widget.project.cost - widget.uICost).toInt()} TL",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget timeBox() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Center(
                      child: Text(
                        "Tasarım Süresi",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Center(
                      child: Text(
                        "Geliştirme Süresi",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.2,
            color: Color.fromRGBO(246, 231, 29, 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                    "${widget.uITime} Saat",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                    "${widget.project.hours - widget.uITime} Saat",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
