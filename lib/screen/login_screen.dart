import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacing_simuntag/screen/home_screen.dart';
import '../widget/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nbiController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/untag.png',
                scale: 3,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'SING IN',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Hi! Welcome back, you've been missed ",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                ctrl: nbiController,
                hinttext: 'Masukan NBI',
              ),
              TextFieldWidget(
                ctrl: passwordController,
                hinttext: 'Masukan Password',
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  //disini ketika login dengan NBI , Kemudian Saya Simpah Ke dalam Local Storage
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();

                  await prefs.setString('nbi', nbiController.text);
                  _loginUser(
                    nbi: nbiController.text,
                    password: passwordController.text,
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: Size(0, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Center(
                  child: Text(
                    'SING IN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Ini Fungsi Untuk Melakukan Logika Login
  void _loginUser({required String nbi, required String password}) {
    if (nbi == "1462100062" && password == "galuh123") {
      //ini navigasi ke homeScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return HomeScreen();
          },
        ),
      );
    } else {
      Alert(
        context: context,
        type: AlertType.error,
        title: "NIM and Password Wrong",
        buttons: [],
      ).show();
    }
  }
}
