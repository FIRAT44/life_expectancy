import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/user_data.dart';

import 'result_page.dart';
import 'user_data.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late String seciliCinsiyeyet = "ERKEK";
  double icilenSigara = 0;
  late String sigaraSayisi = "0";
  double yapilanSpor = 0;
  late String yapilanSporSayisi = "0";
  late Color erkekRenk = Colors.green;
  late Color kadinRenk = Colors.orange;

  int boy = 170;
  int kilo = 90;

  void kontrol() {
    if (seciliCinsiyeyet == "KADIN") {
      kadinRenk = Colors.red;
    } else if (seciliCinsiyeyet == "ERKEK") {
      erkekRenk = Colors.black12;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(
                      12.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "BOY",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            boy.toString(),
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlineButton(
                                borderSide: BorderSide(color: Colors.lightBlue),
                                child: Icon(
                                  Icons.exposure_plus_1,
                                  color: Colors.lightBlue,
                                ),
                                onPressed: () {
                                  setState(() {
                                    boy = boy + 1;
                                    if (boy == 200) {
                                      boy = 170;
                                    }
                                  });
                                  print("ustteki buton basıldı");
                                },
                              ),
                            ),
                            SizedBox(
                              width: 20,
                              height: 10,
                            ),
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlineButton(
                                borderSide: BorderSide(color: Colors.lightBlue),
                                child: Icon(
                                  Icons.exposure_minus_1,
                                  color: Colors.lightBlue,
                                ),
                                onPressed: () {
                                  setState(() {
                                    boy = boy - 1;
                                    if (boy == 140) {
                                      boy = 170;
                                    }
                                  });
                                  print("alttaki buton basıldı");
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(
                      12.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "KİLO",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            kilo.toString(),
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlineButton(
                                borderSide: BorderSide(color: Colors.lightBlue),
                                child: Icon(
                                  Icons.exposure_plus_1,
                                  color: Colors.lightBlue,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kilo++;
                                    if (kilo == 120) {
                                      kilo = 90;
                                    }
                                  });
                                  print("ustteki buton basıldı");
                                },
                              ),
                            ),
                            SizedBox(
                              width: 20,
                              height: 10,
                            ),
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlineButton(
                                borderSide: BorderSide(color: Colors.lightBlue),
                                child: Icon(
                                  Icons.exposure_minus_1,
                                  color: Colors.lightBlue,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kilo--;
                                    if (kilo == 60) {
                                      kilo = 90;
                                    }
                                  });
                                  print("alttaki buton basıldı");
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    ("haftada spor yapılan gün sayısı:  $yapilanSporSayisi"),
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    value: yapilanSpor,
                    onChanged: (double newValue) {
                      setState(() {
                        yapilanSpor = newValue;
                        //print(icilenSigara.round());
                        yapilanSpor = yapilanSpor.round() as double;
                        yapilanSporSayisi = yapilanSpor.toString();
                      });
                    },
                  )
                ],
              ),
              margin: EdgeInsets.all(
                12.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
              child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  ("içilen sigara:  $sigaraSayisi"),
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  min: 0,
                  max: 30,
                  value: icilenSigara,
                  onChanged: (double newValue) {
                    setState(() {
                      icilenSigara = newValue;
                      //print(icilenSigara.round());
                      icilenSigara = icilenSigara.round() as double;
                      sigaraSayisi = icilenSigara.toString();
                    });
                  },
                )
              ],
            ),
            margin: EdgeInsets.all(
              12.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              color: Colors.white,
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        seciliCinsiyeyet = "KADIN";
                        kontrol();
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.portrait,
                            size: 50,
                            color: Colors.black,
                          ),
                          Text(
                            "KADIN",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(
                        12.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: kadinRenk,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          seciliCinsiyeyet = "ERKEK";
                          kontrol();
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.tag_faces,
                            size: 50,
                            color: Colors.black,
                          ),
                          Text(
                            "ERKEK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    margin: EdgeInsets.all(
                      12.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: erkekRenk,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonTheme(
            height: 50,
            child: FlatButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(UserData(
                        kilo: kilo,
                        boy: boy,
                        icilenSigara: icilenSigara,
                        seciliCinsiyeyet: seciliCinsiyeyet,
                        yapilanSpor: yapilanSpor)),
                  ),
                );
              },
              child: Text(
                "HESAPLA",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Widget? child;
  final Color? renk;
  MyContainer({this.child, this.renk = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        color: renk,
      ),
    );
  }
}
