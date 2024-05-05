import 'package:flutter/material.dart';
import 'package:salsabil/const/const_home.dart';
import 'package:salsabil/widget/custom_text_feild.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ConstHomepage(
              showBackButton: true,
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Want to Buy ?",
                style: TextStyle(fontSize: 18, color: Color(0xff2F0093)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(fillColor: Color(0xffD2D1D4), hint: "Name"),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(fillColor: Color(0xffD2D1D4), hint: "Phone"),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
                fillColor: Color(0xffD2D1D4),
                hint: "Type off real estate you want  "),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
                fillColor: Color(0xffD2D1D4),
                hint: "Localisation off real estate you want  "),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
                fillColor: Color(0xffD2D1D4), hint: "N° of rooms"),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
                fillColor: Color(0xffD2D1D4), hint: "You work  Adress"),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5200FF),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20)),
                  onPressed: () {},
                  child: const Text(
                    "Send",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset("images/home/Frame 23.png"),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
