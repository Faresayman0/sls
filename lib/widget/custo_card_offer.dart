import 'package:flutter/material.dart';

class CustomCardOffer extends StatelessWidget {
  const CustomCardOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return       SizedBox(
                      width: 320,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: SizedBox(
                            child: Card(
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.horizontal(
                                      left: Radius.circular(12.0),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Image.asset(
                                          'images/home/Frame 114.png',
                                          width: 120,
                                          height: 180,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Constantine Nouvelle ville',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text('4.9 ★'),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.location_on_rounded),
                                              Text("UV 17, Ali mendjli"),
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
                          ),
                        ),
                      ),
                    );
          ;
  }
}