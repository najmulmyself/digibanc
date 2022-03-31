import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Card(
        // height: 450,
        // width: 300,
        color: Colors.red,
        child: Container(
          height: 400,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'My Account',
                style: TextStyle(
                    fontSize: 20,
                    // fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600),
              ),
              Column(
                children: const [
                  Text('Omar Mansur'),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text('Add money'))
            ],
          ),
        ),
      ),
    );
  }
}
