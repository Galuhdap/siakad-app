import 'package:flutter/material.dart';

Container background({chld}) {
  return Container(
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
    child: chld,
  );
}
