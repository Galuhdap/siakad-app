import 'package:flutter/material.dart';

class MyMatakuliah extends StatelessWidget {
  final String? matkul;
  final String? kode;
  final String? hari;
  final String? jam;
  final String? kelas;
  final String? ruang;

  const MyMatakuliah({
    super.key,
    this.matkul,
    this.kode,
    this.hari,
    this.jam,
    this.kelas,
    this.ruang
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13, ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 90,
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
              padding: const EdgeInsets.only(left: 10),
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
                        "$matkul",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$kode",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "${hari}, ${jam}",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Kelas : ${kelas}",
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
            left: 229,
            top: 65,
            child: Container(
              width: 80,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.grey,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  Text(
                    "${ruang}",
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
    );
  }
}
