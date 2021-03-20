import 'package:estim8/model/data.dart';
import 'package:estim8/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Project project = new Project();
  List<Platform> platform = Platform.getPlatform();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: platform.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.white,
                child: Card(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        project.cost = project.cost + platform[index].cost;
                      });
                    },
                    child: Container(
                      width: 250,
                      height: 100,
                      child: Row(
                        children: [
                          Icon(platform[index].icon),
                          Text(platform[index].name),
                          Text("Project Cost = ${project.cost}Lira"),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
