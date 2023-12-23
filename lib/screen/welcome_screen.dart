import 'package:flutter/material.dart';
import 'package:slacing_simuntag/widget/background_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: background(
        chld: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/untag.png',
                scale: 5,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Academic Information Systems -",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Universitas 17 Agustus 1945 Surabaya",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "An Empowering &\nNetworking University",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                width: 388,
                height: 57,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0x3dffffff), Color(0x30ffffff)],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
