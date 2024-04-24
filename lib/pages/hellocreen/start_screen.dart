import 'package:flutter/material.dart';
import 'package:salsabil/pages/hellocreen/best_place.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // صورة الخلفية
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/hello/start.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // التدرج اللوني الشفاف
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black54],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [.1, 1.0],
              ),
            ),
          ),
          // المحتويات فوق الصورة
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/hello/Group 13.png"),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "immobily",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(height: 80), // توفير مساحة بين النص والزر
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        backgroundColor: const Color(0xffB66404)),
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
