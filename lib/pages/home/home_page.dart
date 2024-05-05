import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:salsabil/const/const_home.dart';
import 'package:salsabil/pages/home/description.dart';
import 'package:salsabil/pages/home/subpages/buy.dart';
import 'package:salsabil/pages/home/subpages/sell.dart';
import 'package:salsabil/widget/custo_card_offer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => showWelcomeDialog(context));
  }

  void showWelcomeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: const Color(0xffF48A00),
          content: const Padding(
            padding: EdgeInsets.only(top: 50),
            child: SizedBox(
              width: 40, // يمكنك تعديل هذه القيمة لتغيير العرض
              height: 300, // تعديل الارتفاع حسب الحاجة
              child: Text(
                "Welcome there in \nAKARI\n I hope we meet your\n expectations.\n \nDo not hesitate to test the chatbot now.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          actions: <Widget>[
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff5200FF)),
                child: const Text(
                  "Start Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // Closes the dialog
                },
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ConstHomepage(
                showBackButton: false,
              ),
              // Top Bar Stack
              // Category Buttons
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      'All',
                      'Houses',
                      'Appartement',
                      'Appartement',
                      'Appartement',
                    ].map((String category) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Chip(
                          label: Text(category),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              // Horizontal List of Cards
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 320,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: SizedBox(
                            child: Image.asset('images/home/Frame 108.png'),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Offers",
                      style: TextStyle(color: Color(0xff2F0093), fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const DescriptionPage();
                          }));
                        },
                        child: const Text(
                          "view all",
                          style: TextStyle(color: Color(0xff234F68)),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const CustomCardOffer();
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Search With Location",
                  style: TextStyle(color: Color(0xff2F0093), fontSize: 18),
                ),
              ),
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
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "How we can help you ?",
                  style: TextStyle(fontSize: 18, color: Color(0xff2F0093)),
                ),
              ),
              const SizedBox(
                height: 10,
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
      ),
    );
  }
}
