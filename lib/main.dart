import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double _currentslider = 0;
  int count = 0;
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Center(
            child: Text(
              "BMI CALCULATOR",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.deepPurple[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 5),
                          color: const Color.fromARGB(255, 47, 40, 68),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 80,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(right: 5),
                          color: const Color.fromARGB(255, 47, 40, 68),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 80,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 47, 40, 68),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "HEIGHT",
                              style: TextStyle(color: Colors.white),
                            ),
                            // Text(
                            //   "70",
                            //   style: TextStyle(color: Colors.white),
                            // ),
                            Slider(
                                max: 200,
                                divisions: 5,
                                label: _currentslider.toString(),
                                value: _currentslider,
                                onChanged: (double value) {
                                  setState(() {
                                    _currentslider = value;
                                  });
                                }
                                )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            color: const Color.fromARGB(255, 47, 40, 68),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "WEIGHT",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "$count",
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Colors.deepPurple[900],
                                      onPressed: () {
                                        setState(() {
                                          count--;
                                        });
                                      },
                                      child: const Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      backgroundColor: Colors.deepPurple[900],
                                      onPressed: () {
                                        setState(() {
                                          count++;
                                        });
                                      },
                                      child: const Icon(Icons.add),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              color: const Color.fromARGB(255, 47, 40, 68),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "AGE",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "$age",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FloatingActionButton(
                                          backgroundColor:
                                              Colors.deepPurple[900],
                                          onPressed: () {
                                            setState(() {
                                              age--;
                                            });
                                          },
                                          child: const Icon(Icons.remove)),
                                      FloatingActionButton(
                                        backgroundColor: Colors.deepPurple[900],
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        child: const Icon(Icons.add),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
            constraints: const BoxConstraints.expand(
              height: 50,
            ),
            child: const BottomAppBar(
                color: Colors.purple,
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(fontSize: 27, color: Colors.white),
                  ),
                ))),
      ),
    );
  }
}
