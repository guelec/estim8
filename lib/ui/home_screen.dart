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
  List<UserInterface> userInterface = UserInterface.getUserInterface();
  List<Authentication> authentication = Authentication.getAuthentication();
  List<Content> content = Content.getContent();
  List<DateNLocation> dateNLocation = DateNLocation.getDateNLocation();
  List<Billing> billing = Billing.getBilling();
  List<Connection> connection = Connection.getConnection();
  List<Security> security = Security.getSecurity();
  List<Analytics> analytics = Analytics.getAnalytics();
  List<Others> others = Others.getOthers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
        ),
      ),
    );
  }
  ///////////////////

  Widget view(obj) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: obj.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 3),
              )
            ]),
            child: Card(
              shadowColor: Colors.red,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RawMaterialButton(
                        elevation: 3.0,
                        fillColor: Colors.white,
                        child: Icon(
                          obj[index].icon,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      Text(
                        obj[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(obj[index].text),
                  Switch(
                      value: obj[index].isSwitched,
                      onChanged: (value) {
                        setState(() {
                          obj[index].isSwitched = value;
                          if (value == true) {
                            project.cost += obj[index].cost;
                          } else {
                            project.cost -= obj[index].cost;
                          }
                        });
                      })
                ],
              ),
            ),
          );
        });
  }

  ///////////////////
  Widget platformView() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: platform.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 3),
              )
            ]),
            child: Card(
              shadowColor: Colors.red,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RawMaterialButton(
                        elevation: 3.0,
                        fillColor: Colors.white,
                        child: Icon(
                          platform[index].icon,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      Text(
                        platform[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(platform[index].text),
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
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 3),
              )
            ]),
            child: Card(
              shadowColor: Colors.red,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RawMaterialButton(
                        elevation: 3.0,
                        fillColor: Colors.white,
                        child: Icon(
                          appSize[index].icon,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      Text(
                        appSize[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(appSize[index].text),
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
          );
        });
  }
}
