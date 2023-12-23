import 'package:flutter/material.dart';

InkWell menuItem({img, text, inkw}) {
    return InkWell(
      onTap: inkw,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Image.asset(
                    img,
                    scale: 4,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
}