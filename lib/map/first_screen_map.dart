import 'package:flutter/material.dart';
import 'package:salsabil/pages/home/home_page.dart';

class FirstScreenMap extends StatelessWidget {
  const FirstScreenMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 50),
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black)),
                    child:
                        Image.asset('images/hello/Group 52.png', height: 50)),
                Image.asset('images/hello/logo.png', height: 50),
              ],
            ),
            const SizedBox(height: 100),
            const Card(
              color: Color(0xffEBEBEB),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text('Active Location', style: TextStyle(fontSize: 20)),
                    Icon(
                      Icons.location_on,
                      size: 100,
                      color: Color(0xffF48A00),
                    ), // Location icon
                  ],
                ),
              ),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xffE8B170), // Text color
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'search location',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xff252B5C), // Text color
              ),
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
