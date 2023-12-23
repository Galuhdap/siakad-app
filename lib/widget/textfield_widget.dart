import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {

  final String? hinttext;
  final TextEditingController? ctrl;

  const TextFieldWidget({
    super.key,
    this.hinttext,
    this.ctrl,
  });

  
  @override
  Widget build(BuildContext context) {
    

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: ctrl,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Input Tidak Boleh Kosong';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.5),
              )),
          contentPadding: EdgeInsets.only(top: 35, left: 17),
        ),
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
