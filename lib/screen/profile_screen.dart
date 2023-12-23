import 'dart:convert';

import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacing_simuntag/screen/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
    Future<List<dynamic>> loadJson() async {
    var data = await rootBundle.loadString('assets/data/mhs.json');
    var jsonList = jsonDecode(data);
    return jsonList;
  }
  
  final numericGroupList = [
    NumericGroup(
      id: '1',
      data: [
        NumericData(domain: 1, measure: 3.86),
        NumericData(domain: 2, measure: 3.82),
        NumericData(domain: 3, measure: 3.79),
        NumericData(domain: 4, measure: 3.77),
        NumericData(domain: 5, measure: 3.77),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0, 0.6),
            colors: [
              Color(0xfffE00120),
              Color(0xfffFF9F59),
            ],
          ),
        ),
        child: FutureBuilder<List<dynamic>>(
          future: loadJson(),
          builder: (context, snapshot) {
            
            return Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              width: 2),
                        ),
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/galuh.png'),
                            radius: 43,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${snapshot.data![0]['nama'] ?? null}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text(
                        "${snapshot.data![0]['nbi'] ?? null}",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${snapshot.data![0]['tgl'] ?? null}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Major",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "Teknik Informatika",
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                      "${snapshot.data![0]['ipk'] ?? null}",
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
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Text(
                                "SKS",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 270,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                                child: ListView(
                                  padding: EdgeInsets.all(5),
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 16 / 9,
                                      child: DChartLineN(
                                        groupList: numericGroupList,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();

                          var clear = await prefs.clear();
                          if (clear == true) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return LoginScreen();
                                },
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: Size(0, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                        child: Center(
                          child: Text(
                            'LOG OUT',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
