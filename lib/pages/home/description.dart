import 'package:flutter/material.dart';
import 'package:salsabil/const/const_home.dart';
import 'package:salsabil/pages/home/subpages/detils.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ConstHomepage(
              showBackButton: true,
            ),
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
            const Center(
              child: Text(
                "Offers",
                style: TextStyle(fontSize: 18, color: Color(0xff2F0093)),
              ),
            ),
            GridView.builder(
              shrinkWrap:
                  true, // جعل الـ GridView يتقلص ليتناسب مع حجم المحتويات
              physics:
                  const NeverScrollableScrollPhysics(), // تعطيل التمرير في الـ GridView
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // عدد الأعمدة
                crossAxisSpacing: 10, // المسافة الأفقية بين البطاقات
                mainAxisSpacing: 10, // المسافة العمودية بين البطاقات
              ),
              itemCount: 8, // عدد البطاقات
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){return detailsPage();}));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Image.asset(
                          "images/home/Frame 114.png",
                          width: 70, // تصغير عرض الصورة
                          height: 150, // تصغير ارتفاع الصورة
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Constantine\n Nouvelle ville',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text('4.9 ★'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on_rounded),
                                    Text("UV 17,\n Ali mendjli"),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text('562400 Da'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
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
