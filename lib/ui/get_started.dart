import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, "/home_screen");
        },
        label: Text("Başlamak İçin Tıkla"),
        backgroundColor: Colors.black,
      ),
      body: Container(
          child: SafeArea(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/puzzle.png"),
            ),
            Text(
              "Merhaba",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
            ),
            Text("ESTIM8'e Hoşgeldin", style: TextStyle(fontSize: 24)),
            Divider(
                height: MediaQuery.of(context).size.height * 0.05,
                color: Colors.transparent),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      "Bir uygulama fikrin var ve nereden başlayacağını bilmiyor musun? Merak etme ihtiyacın olan burada. ",
                      style: TextStyle(fontSize: 20)),
                  Divider(
                      height: MediaQuery.of(context).size.height * 0.025,
                      color: Colors.transparent),
                  Text("ESTIM8 sayesinde uygulaman için : ",
                      style: TextStyle(fontSize: 20)),
                  Divider(
                      height: MediaQuery.of(context).size.height * 0.025,
                      color: Colors.transparent),
                  Text(
                    "- Bütçe ve Zaman Tahmini Yapabilir,",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Text("- Yazılım Geliştirme İş Planı Oluşturabilir,",
                      style: TextStyle(fontSize: 16)),
                  Text("- Mali ve Teknik Destek Bulabilirsin.",
                      style: TextStyle(fontSize: 16))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
