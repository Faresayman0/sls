import 'package:flutter/material.dart';

class ConstImage extends StatelessWidget {
  const ConstImage({super.key});

  @override
  Widget build(BuildContext context) {
    return
     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("images/auth/undraw_city_life_gnpr 2.png"),
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 40),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 25,
                color: Colors.black, // اللون الافتراضي للنص
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'Let’s',
                    style: TextStyle(
                      color: Color(0xffB66404),
                    )),
                TextSpan(
                  text: ' Sign In',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color(
                        0xff1F4C6B,
                      )), // اللون المختلف لكلمة "explore"
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
