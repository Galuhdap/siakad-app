import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacing_simuntag/screen/home_screen.dart';
import 'package:slacing_simuntag/screen/login_screen.dart';
import 'package:slacing_simuntag/widget/background_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      var cek = await prefs.getString('nbi');

      if (cek == null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return LoginScreen();
            },
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return HomeScreen();
            },
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: background(
        chld: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/untag.png',
                scale: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Program Studi Teknik Informatika",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Universitas 17 Agustus 1945\nSurabaya",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
