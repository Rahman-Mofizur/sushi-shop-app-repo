import 'package:flutter/material.dart';
import 'package:sushi_shop_app/components/button.dart';

class MySushiDescription extends StatefulWidget {
  const MySushiDescription({super.key});

  @override
  State<MySushiDescription> createState() => _MySushiDescriptionState();
}

class _MySushiDescriptionState extends State<MySushiDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
              child: SizedBox(
                  width: 200, child: Image.asset('lib/images/sushi1.png'))),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.deepOrange,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        '4.9',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Salmon Sushi',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Description',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Salmon sushi is a delicious and popular sushi variety. It features slices of fresh, succulent salmon draped over vinegared rice. The rich, buttery flavor of the salmon complements the slightly tangy rice perfectly. Salmon sushi is often garnished with various toppings like avocado, cucumber, or tobiko (flying fish roe). It's a must-try for sushi lovers.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),

          // Bottom Bar
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 138, 60, 55),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$21.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyButton(buttonText: 'Add to Cart'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
