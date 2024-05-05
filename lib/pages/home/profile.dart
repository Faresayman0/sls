import 'package:flutter/material.dart';
import 'package:salsabil/const/const_home.dart';
import 'package:salsabil/pages/home/subpages/buy.dart';
import 'package:salsabil/pages/home/subpages/sell.dart';
import 'package:salsabil/widget/custom_text_feild.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const ConstHomepage(
          showBackButton: false,
        ),
        const SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2F0093),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const BuyPage();
                  }));
                },
                child: const Text(
                  "Want to Buy",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2F0093),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SellPage();
                  }));
                },
                child: const Text(
                  "Want to sell",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Center(
          child: Text(
            "Discover Now Our Pack !",
            style: TextStyle(color: Color(0xff2F0093), fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF48A00),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
              onPressed: () {},
              child: const Text(
                "Subscribe with us ",
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
      ]),
    );
  }
}
