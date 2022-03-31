import 'package:digibanc/screen/card.dart';
import 'package:digibanc/screen/test.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentPage,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              const Text(
                'Total Balance',
                style: TextStyle(
                    fontSize: 20,
                    // fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '7,896.00',
                    style: TextStyle(
                        fontSize: 50,
                        // fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                  Text('JOD'),
                ],
              ),
            ],
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: const [
          //       CardDetail(),
          //       CardDetail(),
          //       CardDetail(),
          //     ],
          //   ),
          // ),
          AnimatedBuilder(
            animation: _pageController,
            child: child,
            builder: (BuildContext context, child) {
              // return SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Transform.rotate(
              //         angle: 0.08,
              //         child: CardDetail(),
              //       ),
              //       Transform.rotate(
              //         angle: 0.08,
              //         child: CardDetail(),
              //       ),
              //       Transform.rotate(
              //         angle: 0.08,
              //         child: CardDetail(),
              //       ),
              //       // CardDetail(),
              //       // CardDetail(),
              //     ],
              //   ),
              // );
              return Transform.rotate(angle: 0.08, child: child);
            },
          ),
        ],
      ),
    );
  }
}

