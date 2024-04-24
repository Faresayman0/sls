import 'package:flutter/material.dart';
import 'package:salsabil/auth/login_page.dart';
import 'package:salsabil/auth/register_page.dart';
import 'package:salsabil/widget/custom_card_image.dart';

class ChoseLogIn extends StatelessWidget {
  ChoseLogIn({super.key});

  final List<String> images = [
    'images/auth/Rectangle 28.png',
    'images/auth/Rectangle 29.png',
    'images/auth/Rectangle 30.png',
    'images/auth/Rectangle 31.png',
    // يمكن إضافة المزيد من الصور هنا
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 0),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return ImageCardWidget(assetName: images[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black, // اللون الافتراضي للنص
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Ready to ',
                        style: TextStyle(
                          color: Color(0xff46A2E4),
                        )),
                    TextSpan(
                      text: 'explore?',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Color(
                            0xff46A2E4,
                          )), // اللون المختلف لكلمة "explore"
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      left: 40, top: 10, bottom: 10, right: 40),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xffB66404),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.email_outlined),
                    Text('Continue With Email'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('OR'),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // يجب استبدال الأيقونات بأيقونات Google و Facebook الحقيقية
                ElevatedButton(
                    onPressed: () {},
                    child: Image.asset("images/auth/devicon_google.png")),
                ElevatedButton(
                    onPressed: () {},
                    child: Image.asset("images/auth/gg_facebook.png"))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: TextButton(
                onPressed: () {
                  // الانتقال لصفحة التسجيل
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const RegisterPage();
                    }));
                  },
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black, // اللون الافتراضي للنص
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Don’t have an account?',
                              style: TextStyle(
                                color: Color(0xff0C558A),
                              )),
                          TextSpan(
                            text: 'Register?',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color(
                                  0xff0C558A,
                                )), // اللون المختلف لكلمة "explore"
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
