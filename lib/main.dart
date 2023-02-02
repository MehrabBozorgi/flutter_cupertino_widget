import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const
        Text('CupertinoListTile')),
        body: Column(
          children: [
            for (int i = 0; i < 6; i++)
              for (int i = 0; i < 3; i++)
                CupertinoListSection(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            color: Colors.red[200],
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'title $i',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ],
                ),
            SizedBox(height: 30),
            CupertinoListSection(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(15),
              ),

              margin: const
              EdgeInsets.
              symmetric(horizontal: 10,vertical: 10),
              children: [
                for (int i = 0; i < 7; i++)
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                        const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          color: Colors.red[200],
                          borderRadius:
                          BorderRadius.circular(200),
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'title $i',
                        style: const
                        TextStyle(fontSize: 18),
                      ),
                      const Icon(
                          Icons.arrow_forward_ios),



                    ],
                  ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}





















