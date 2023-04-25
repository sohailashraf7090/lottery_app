// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const lotteryApp());
}

class lotteryApp extends StatefulWidget {
  const lotteryApp({super.key});

  @override
  State<lotteryApp> createState() => _lotteryAppState();
}

class _lotteryAppState extends State<lotteryApp> {
  int x = 0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Lotery App")),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              x == 4
                  ? const Image(
                      image: AssetImage("assets/images/sohail.jpg"),
                      height: 150,
                      width: 300,
                    )
                  : const Image(
                      image: AssetImage("assets/images/download.jpg"),
                      height: 150,
                      width: 300,
                    ),
              const Center(
                  child: Text(
                "MY Lottery No is 4",
                style: TextStyle(color: Colors.deepOrange, fontSize: 20),
              )),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: x == 4 ? 300 : 250,
                height: 200,
                decoration: BoxDecoration(
                    color: x == 4
                        ? Colors.amberAccent[100]
                        : Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(20)),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 50,
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "Congratulation you won this lottery Sohail \n Your Lottery No is 4",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Best Luck next time: $x \ntry again!",
                              style: const TextStyle(
                                  color: Colors.blue, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
              )
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
