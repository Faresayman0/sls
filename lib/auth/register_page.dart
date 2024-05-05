import 'package:flutter/material.dart';
import 'package:salsabil/auth/login_page.dart';
import 'package:salsabil/map/first_screen_map.dart';
import 'package:salsabil/pages/home/home_page.dart';
import 'package:salsabil/widget/const_image.dart';
import 'package:salsabil/widget/custom_text_feild.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("images/auth/undraw_city_life_gnpr 2.png"),
          const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Create acount ",
                style: TextStyle(color: Color(0xffB66404), fontSize: 25),
              )),
          const CustomTextField(
            hint: 'Enter your nom',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            
            hint: 'Enter your prenom',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hint: 'Enter your address',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hint: 'Enter your travail',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hint: 'Enter your age',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hint: 'Enter your address email',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hint: 'Enter your telephone',
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 18,
                ),
                backgroundColor: const Color(0xff252B5C),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const FirstScreenMap();
                }));
              },
              child: const Text(
                "Create",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const LoginPage();
              }));
            },
            child: Center(
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Already have an acount?',
                      style: TextStyle(
                        color: Color(0xffB66404),
                      ),
                    ),
                    TextSpan(
                      text: ' Sign In?',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Color(0xff0C558A),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
