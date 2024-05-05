import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('images/home/Frame 79.png', fit: BoxFit.cover),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 220),
                    child: Text('Description',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'This cozy rancher in Hampden Township has been exceptionally well-cared-for and boasts 3 bedrooms, 1.5 bathrooms, natural hardwood floors, a wood-burning fireplace, and a level, spacious backyard. A new energy efficient, natural gas combination boiler/hot water heater and a new',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Constantine',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Nouvelle ville', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text('4.9', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  const Text('Uv 17, Ali mendjli',
                      style: TextStyle(fontSize: 18)),
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
          ],
        ),
      ),
    );
  }
}
