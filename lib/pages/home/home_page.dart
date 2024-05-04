import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar Stack
            SizedBox(
              height: 180,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Profile Image with ClipRRect
                  Positioned(
                    top: -50,
                    left: -50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('images/home/Ellipse 7.png'),
                          radius: 120,
                        ),
                      ),
                    ),
                  ),
                  // Constantine Text
                  Positioned(
                    top: 30,
                    left: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Constantine",
                        style: TextStyle(color: Color(0xff252B5C)),
                      ),
                    ),
                  ),

                  Positioned(
                      top: 100,
                      left: 30,
                      child: Row(
                        children: [
                          const Text(
                            "Hey, Imen ! \nLet's start exploring ",
                            style: TextStyle(
                                fontSize: 25, color: Color(0xff252B5C)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.black)),
                              child: Image.asset('images/hello/Group 52.png',
                                  height: 50)),
                        ],
                      )),
                  // Icons
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xffE8B170),
                              width: 2.0,
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.notifications,
                              size: 40,
                              color: Color(0xffE8B170),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xffD9D9D9),
                              width: 2.0,
                            ),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: ClipOval(
                            child: Container(
                              height: 60,
                              width: 60,
                              color: Colors.transparent,
                              child: Image.asset(
                                "images/home/394d3c813d88448c39519bbe9878f691.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Search Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffD9D9D9).withOpacity(0.5),
                  hintText: 'Search House, Apartment, etc',
                  suffixIcon: const Icon(Icons.segment),
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
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
            Expanded(
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
          ],
        ),
      ),
    );
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
}
