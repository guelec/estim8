import 'package:estim8/model/data.dart';
import 'package:estim8/model/user.dart';
import 'package:estim8/ui/calculate.dart';
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
  int uICost = 0;
  int uITime = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Maliyet ve Zaman Hesabı"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
            child: Column(
              children: [
                //
                Divider(
                  height: MediaQuery.of(context).size.height * 0.025,
                  color: Colors.transparent,
                ),
                leadCard(),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //Text("Project Cost = ${project.cost} Lira"),
                //Text("Project Time = ${project.hours} Hours"),

                headerView("Platform",
                    "Uygulamanızı yayınlayacağınız platformları seçiniz."),
                platformView(),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //
                headerView("Uygulama Boyutu",
                    "Uygulamanızın içereceği tahmini sayfa sayısını seçiniz."),
                appSizeView(),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //
                headerView("Arayüz Tasarımı",
                    "Uygulamanızın ihtiyaç duygu arayüzün seviyesini seçiniz."),
                view(userInterface),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //
                headerView("Kimlik Doğrulama",
                    "Kullanıcılarınızın uygulamaya giriş yapması durumunda kullanıcakları doğrulama yöntemini seçiniz."),
                view(authentication),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //
                headerView("İçerik",
                    "Uygulamanızın içerisinde bulunabilecek içerik seçeneklerinden uygun olanları seçiniz."),
                view(content),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //
                headerView("Konum ve Tarih",
                    "Uygulamanızın içerisinde bulunabilecek konum ve tarih seçeneklerinden uygun olanları seçiniz."),
                view(dateNLocation),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //
                headerView("Ödemeler",
                    "Uygulamanızın içerisinde bulunabilecek ödeme seçeneklerinden uygun olanları seçiniz."),
                view(billing),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //
                headerView("Bağlantı",
                    "Uygulamanızın içerisinde bulunabilecek bağlantı seçeneklerinden uygun olanları seçiniz."),
                view(connection),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //
                headerView("Güvenlik",
                    "Uygulamanızın içerisinde bulunabilecek güvenlik seçeneklerinden uygun olanları seçiniz."),
                view(security),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //
                headerView("Analitik",
                    "Uygulamanızın içerisinde bulunabilecek analitik seçeneklerinden uygun olanları seçiniz."),
                view(analytics),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                //
                headerView("Diğer",
                    "Uygulamanızın içerisinde bulunabilecek diğer seçeneklerden uygun olanları seçiniz."),
                view(others),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
                OutlinedButton(
                  child: Text(
                    "Hesapla",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Calculate(
                            project: project, uICost: uICost, uITime: uITime),
                      ),
                    );
                  },
                ),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget leadCard() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.2,
        color: Color.fromRGBO(246, 231, 29, 1.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Şimdi mobil uygulamanda var olacak veya olmasını düşündüğün yazılımsal modülleri seç, sen seçimlerini yaparken ben birazcık matematik hesabı yapıyor olacağım.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Widget headerView(text, subtext) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Color.fromRGBO(246, 231, 29, 1.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                subtext,
                textAlign: TextAlign.center,
              )
            ],
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
            decoration: BoxDecoration(shape: BoxShape.circle),
            //  decoration: BoxDecoration(boxShadow: [
            //    BoxShadow(
            ///      color: Colors.grey.withOpacity(0.1),
            //      spreadRadius: 1,
            //      blurRadius: 1,
            //      offset: Offset(0, 3),
            //    )
            //  ]),
            child: Card(
              color: Color.fromRGBO(246, 231, 29, 1.0),
              shadowColor: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RawMaterialButton(
                        elevation: 3.0,
                        fillColor: Colors.black,
                        child: Icon(
                          obj[index].icon,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Center(
                          child: Text(
                            obj[index].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(obj[index].text)),
                  Switch(
                      activeColor: Colors.black,
                      value: obj[index].isSwitched,
                      onChanged: (value) {
                        setState(() {
                          obj[index].isSwitched = value;
                          if (value == true) {
                            if (obj[index].name == "Prototip" ||
                                obj[index].name == "Basit" ||
                                obj[index].name == "StartUp" ||
                                obj[index].name == "Profesyonel") {
                              uICost = obj[index].cost;
                              uITime = obj[index].hours;
                            }
                            project.cost += obj[index].cost;
                            project.hours += obj[index].hours;
                          } else {
                            project.cost -= obj[index].cost;
                            project.hours -= obj[index].hours;
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
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 3),
              )
            ]),
            child: Card(
              shadowColor: Colors.grey,
              color: Color.fromRGBO(246, 231, 29, 1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RawMaterialButton(
                        elevation: 3.0,
                        fillColor: Colors.black,
                        child: Icon(
                          platform[index].icon,
                          size: 35.0,
                          color: Colors.white,
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
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(platform[index].text)),
                  Switch(
                      activeColor: Colors.black,
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
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 3),
              )
            ]),
            child: Card(
              shadowColor: Colors.grey,
              color: Color.fromRGBO(246, 231, 29, 1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RawMaterialButton(
                        elevation: 3.0,
                        fillColor: Colors.black,
                        child: Icon(
                          appSize[index].icon,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      Text(
                        appSize[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(appSize[index].text)),
                  Switch(
                      activeColor: Colors.black,
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
