import 'package:estim8/model/data.dart';
import 'package:estim8/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Project project = new Project();
  List<Platform> platform = Platform.getPlatform();
  List<AppSize> appSize = AppSize.getAppSize();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Container(
        child: Column(
          children: [
            Text("Project Cost = ${project.cost}Lira"),
            platformView(),
            appSizeView()
          ],
        ),
      ),
    );
  }

  Widget platformView() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: platform.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            child: Card(
              color: Colors.green,
              child: Row(
                children: [
                  Icon(platform[index].icon),
                  Text(platform[index].name),
                  Switch(
                      value: platform[index].isSwitched,
                      onChanged: (value) {
                        setState(() {
                          platform[index].isSwitched = value;
                          if (value == true) {
                            project.cost += platform[index].cost;
                          } else {
                            project.cost -= platform[index].cost;
                          }
                        });
                      })
                ],
              ),
            ),
          );
        });
  }

  Widget appSizeView() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: appSize.length,
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
                      Icon(appSize[index].icon),
                      Text(appSize[index].name),
                      Switch(
                          value: appSize[index].isSwitched,
                          onChanged: (value) {
                            setState(() {
                              appSize[index].isSwitched = value;
                              if (value == true) {
                                project.cost *= appSize[index].mult;
                              } else {
                                project.cost /= appSize[index].mult;
                              }
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
