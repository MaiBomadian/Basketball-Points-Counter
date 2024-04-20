import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/counter_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = BlocProvider.of<CounterCubit>(context);
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
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
                        const Text(
                          'Team A',
                          style: TextStyle(fontSize: 42),
                        ),
                        Text(
                          '${vm.teamAPoints}',
                          style: const TextStyle(
                              fontSize: 102, fontWeight: FontWeight.w400),
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
                                  vm.teamIncrement(team: 'A', buttonNum: 1);
                                },
                                child: const Text(
                                  'Add 1 Point',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
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
                                  vm.teamIncrement(team: 'A', buttonNum: 2);
                                },
                                child: const Text(
                                  'Add 2 Point',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
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
                                  vm.teamIncrement(team: 'A', buttonNum: 3);
                                },
                                child: const Text(
                                  'Add 3 Point',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 380,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(fontSize: 42),
                        ),
                        Text(
                          '${vm.teamBPoints}',
                          style: const TextStyle(
                              fontSize: 102, fontWeight: FontWeight.w400),
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
                                  vm.teamIncrement(team: 'B', buttonNum: 1);
                                },
                                child: const Text(
                                  'Add 1 Point',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
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
                                  vm.teamIncrement(team: 'B', buttonNum: 2);
                                },
                                child: const Text(
                                  'Add 2 Point',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
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
                                  vm.teamIncrement(team: 'B', buttonNum: 3);
                                },
                                child: const Text(
                                  'Add 3 Point',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ))),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
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
                          vm.resetCounter();
                        },
                        child: const Text(
                          'Reset',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ))),
              ],
            ));
      },
      listener: (context, state) {
        if (state is CounterAIncrementState) {
        } else {}
      },
    );
  }
}
