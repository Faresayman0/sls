import 'package:flutter/material.dart';
import 'package:salsabil/const/const_home.dart';
import 'package:salsabil/pages/home/subpages/buy.dart';
import 'package:salsabil/pages/home/subpages/description.dart';
import 'package:salsabil/pages/home/subpages/sell.dart';
import 'package:salsabil/widget/custo_card_offer.dart';

class detailsPage extends StatelessWidget {
  const detailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ConstHomepage(
              showBackButton: true,
            ),
            const CustomCardOffer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffBA9EF5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Description();
                  }));
                },
                child: const Text(
                  "Show details",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: SizedBox(
                          child: Image.asset(
                            'images/home/Location - Small.png',
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                "How we can help you ?",
                style: TextStyle(color: Color(0xff2F0093), fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 20,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20)),
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
          ],
        ),
      ),
    );
  }
}
