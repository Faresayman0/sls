import 'package:flutter/material.dart';

class ConstHomepage extends StatelessWidget {
  final bool showBackButton; // متغير للتحكم في عرض الـ Row

  const ConstHomepage({
    super.key,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                      backgroundImage: AssetImage('images/home/Ellipse 7.png'),
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
              // Optional Row
              if (showBackButton) // الشرط لعرض الـ Row
                Positioned(
                  top: 70,
                  left: 30,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back)),
                      const Text("Back")
                    ],
                  ),
                ),
              Positioned(
                  top: 100,
                  left: 30,
                  child: Row(
                    children: [
                      const Text(
                        "Hey, Imen ! \nLet's start exploring ",
                        style:
                            TextStyle(fontSize: 25, color: Color(0xff252B5C)),
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
      ],
    );
  }
}
