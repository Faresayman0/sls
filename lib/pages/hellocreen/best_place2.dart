import 'package:flutter/material.dart';
import 'package:salsabil/auth/chose_log_in.dart';
import 'package:salsabil/auth/login_page.dart';

class BestPlace2 extends StatelessWidget {
  const BestPlace2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double bottomImageHeight = screenHeight * 0.5; // نصف الشاشة للصورة

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // شريط الأعلى وزر Skip
          Positioned(
              top: 40, left: 20, child: Image.asset("images/hello/icon.png")),
          Positioned(
            top: 40,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ChoseLogIn();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffDFDFDF), // لون الخلفية
                foregroundColor: Colors.black, // لون النص
              ),
              child: const Text('skip'),
            ),
          ),

          // النصوص الرئيسية في الجزء العلوي من الشاشة
          Positioned(
            top: screenHeight * 0.25, // وضع النص في ربع الشاشة العلوي
            left: 20,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Find best place\nwith ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'good price',
                        style: TextStyle(
                          color: Color(0xffB66404), // تغيير لون النص هنا
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xff292929),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // صورة في الجزء الأسفل من الشاشة
          Positioned(
            left: 20,
            right: 20,
            bottom: 10,
            height: bottomImageHeight,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'images/hello/best2.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 50, // يمكنك تعديل هذه القيمة لتغيير موقع الزر
            left: 100,
            right: 100,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ChoseLogIn();
                }));
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Colors.green, // لون الخلفية
              ),
              child: const Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
