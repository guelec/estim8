import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Mali ve Teknik Destek"),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
                height: MediaQuery.of(context).size.height * 0.05,
                color: Colors.transparent),
            box(
                "Mali Destek #1",
                "Mikro Kredi Desteği",
                "VakıfBank'ın Teknoloji Girişimcileri için Mikro Kredi Desteği Projesi Hayata Geçirildi.",
                "Vakıfbank"),
            Divider(
                height: MediaQuery.of(context).size.height * 0.05,
                color: Colors.transparent),
            box(
                "Mali Destek #2",
                "Akran Kredi Sistemi",
                "ESTIM8, Müşterilerine Özel Olarak Dinamik Ödeme Planlı Akran Kredi ve Akran Mikro Kredi Planlarını Duyurdu.",
                "estim8"),
            Divider(
                height: MediaQuery.of(context).size.height * 0.05,
                color: Colors.transparent),
            box(
                "Teknik Destek #1",
                "Yazılımcılar Havuzda",
                "Projene çok güveniyorsun ama teknik bilgide mi sıkıntın var? O zaman Viveka'dan teknolojik danışmanlık almaya ne dersin?",
                "Viveka"),
            Divider(
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.transparent),
          ],
        ),
      )),
    );
  }

  Widget box(String title, String subtitle, String body, String postedBy) {
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
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(subtitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                        ),
                      ),
                      Divider(
                        height: MediaQuery.of(context).size.height * 0.01,
                        color: Colors.transparent,
                      ),
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(body),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("~Posted by $postedBy",
                          style: TextStyle(color: Colors.grey)),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
