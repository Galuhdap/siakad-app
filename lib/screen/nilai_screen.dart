import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/nilai_widget.dart';

class NilaiScreen extends StatefulWidget {
  const NilaiScreen({super.key});

  @override
  State<NilaiScreen> createState() => _NilaiScreenState();
}

class _NilaiScreenState extends State<NilaiScreen> {
  Future<List<dynamic>> loadJson() async {
    var data = await rootBundle.loadString('assets/data/nilai.json');
    var jsonList = jsonDecode(data);
    return jsonList;
  }

  @override
  void initState() {
    // TODO: implement initState
    loadJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xfffE00120),
        title: Text(
          "Daftar Nilai",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          FutureBuilder<List<dynamic>>(
            future: loadJson(),
            builder: (context, snapshot) {
              return Container(
                height: 640,
                width: 500,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 20),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, index) {
                    var data = snapshot.data![index];
                    return NilaiContainerWidget(
                      nmaMat: data['nama_mk'] ?? null,
                      kodMat: data['kode_mk'].toString(),
                      smst: data['smstr'].toString(),
                      nh: data['nilai_hrf'] ?? null,
                      na: data['nilai_angk'].toString(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
