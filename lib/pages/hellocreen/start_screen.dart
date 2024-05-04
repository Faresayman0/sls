import 'package:flutter/material.dart';
import 'package:salsabil/pages/hellocreen/best_place.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDC494),
      body: Stack(
        children: <Widget>[
          // صورة الخلفية

          // التدرج اللوني الشفاف

          // المحتويات فوق الصورة
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/hello/Group 52.png"),
                const SizedBox(
                  height: 16,
                ),
                Image.asset("images/hello/logo.png"),
                const SizedBox(height: 160), // توفير مساحة بين النص والزر
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 18),
                        backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const BestPlace();
                      }));
                    },
                    child: const Text(
                      "let’s start",
                      style: TextStyle(
                          letterSpacing: 3, fontSize: 19, color: Colors.white),
                    )),
                const SizedBox(height: 8), // مساحة أسفل الزر
                const Text(
                  'Made with Passion\nv1.0',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
