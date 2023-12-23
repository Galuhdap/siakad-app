import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slacing_simuntag/screen/nilai_screen.dart';
import 'package:slacing_simuntag/screen/profile_screen.dart';
import 'package:slacing_simuntag/widget/background_widget.dart';

import '../widget/menu_widget.dart';
import '../widget/mymatakuliah_widget.dart';
import '../widget/tgl_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<dynamic>> loadJson() async {
    var data = await rootBundle.loadString('assets/data/matkul.json');
    var jsonList = jsonDecode(data);
    return jsonList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: background(
        chld: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  width: 2),
                            ),
                            child: Center(
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/galuh.png'),
                                radius: 25,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Galuh Dwi Agung Putra",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Text(
                                "1462100062",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Icon(Icons.notifications_none_rounded),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 70,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Major",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Tekni Informatika",
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 190,
                              height: 1,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Semester",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 190,
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 70,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "SKS",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "22",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 190,
                              height: 1,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "IPK",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "3.7",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 190,
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      menuItem(
                          img: 'assets/icons/calendar.png', text: "Schedule"),
                      menuItem(
                          img: 'assets/icons/assigment.png',
                          text: "Assignment"),
                      menuItem(
                          img: 'assets/icons/score.png',
                          text: "Score",
                          inkw: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builde) {
                                  return NilaiScreen();
                                },
                              ),
                            ).then((value) {
                              setState(() {});
                            });
                          }),
                      menuItem(img: 'assets/icons/pesan1.png', text: "Message"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      menuItem(
                        img: 'assets/icons/profile.png',
                        text: "Profile",
                        inkw: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return ProfileScreen();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        },
                      ),
                      menuItem(
                          img: 'assets/icons/payment.png', text: "Payment"),
                      menuItem(img: 'assets/icons/exam.png', text: "Exam"),
                      menuItem(
                          img: 'assets/icons/allmenu.png', text: "All Menu"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 364,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Senin, 25 Desember 2023",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xfffE00120),
                                    border: Border.all(
                                      color: Color(0xfffE00120),
                                      width: 1,
                                    ),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "25",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Sen",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TglWidget(
                                  tgl: '26',
                                  hari: "Sel",
                                ),
                                TglWidget(
                                  tgl: '27',
                                  hari: "Rab",
                                ),
                                TglWidget(
                                  tgl: '28',
                                  hari: "Kam",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Class Today",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.4),
                                            offset: Offset(0, 4),
                                            blurRadius: 10,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/lesson.png',
                                              scale: 3,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "VISUALISASI DATA",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "12:00 - 14:30",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 230,
                                      child: Container(
                                        width: 80,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                          ),
                                          color: Colors.grey,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "L. 606",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FutureBuilder<List<dynamic>>(
                            future: loadJson(),
                            builder: (context, snapshot) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      "My Matakuliah",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 640,
                                    child: ListView.builder(
                                      padding: EdgeInsets.only(
                                        top: 5,
                                        left: 25,
                                        right: 25,
                                      ),
                                      itemCount: snapshot.data!.length,
                                      itemBuilder:
                                          (BuildContext context, index) {
                                        var data =
                                            snapshot.data![index] ?? null;
                                        return MyMatakuliah(
                                          matkul: data['nama_mk'],
                                          kode: data['kode_mk'].toString(),
                                          hari: data['hari'],
                                          jam: data['jam'],
                                          kelas: data['kelas'],
                                          ruang: data['ruang'],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
