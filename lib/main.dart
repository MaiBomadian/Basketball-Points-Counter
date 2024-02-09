import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                  const  Text(
                      'Team A',
                      style: TextStyle(fontSize: 42),
                    ),
                    Text(
                      '$teamAPoints',
                      style:
                       const   TextStyle(fontSize: 102, fontWeight: FontWeight.w400),
                    ),
                    Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.orange,
                        ),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints++;
                              });
                            },
                            child: const Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ))),
                  const  SizedBox(
                      height: 12,
                    ),
                    Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.orange,
                        ),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 2;
                              });
                            },
                            child:const Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ))),
                   const SizedBox(
                      height: 12,
                    ),
                    Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.orange,
                        ),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 3;
                              });
                            },
                            child:const Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ))),
                  ],
                ),
              const  SizedBox(
                  height: 380,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                  const  Text(
                      'Team B',
                      style: TextStyle(fontSize: 42),
                    ),
                    Text(
                      '$teamBPoints',
                      style:
                        const  TextStyle(fontSize: 102, fontWeight: FontWeight.w400),
                    ),
                    Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.orange,
                        ),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints++;
                              });
                            },
                            child:const Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ))),
                 const   SizedBox(
                      height: 12,
                    ),
                    Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.orange,
                        ),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints += 2;
                              });
                            },
                            child: const Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ))),
                   const SizedBox(
                      height: 12,
                    ),
                    Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.orange,
                        ),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints += 3;
                              });
                            },
                            child:const Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ))),
                  ],
                ),
              ],
            ),
          const  SizedBox(
              height: 90,
            ),
            Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.orange,
                ),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints = 0;
                        teamBPoints = 0;
                      });
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ))),
          ],
        ),
      ),
    );
  }
}
