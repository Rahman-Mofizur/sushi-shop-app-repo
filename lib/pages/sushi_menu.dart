import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sushi_shop_app/components/button.dart';

class MySushiMenu extends StatefulWidget {
  const MySushiMenu({super.key});

  @override
  State<MySushiMenu> createState() => _MySushiMenuState();
}

class _MySushiMenuState extends State<MySushiMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Icon(
            Icons.menu,
            size: 28,
          ),
        ),
        title: const Text(
          'Tokyo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(
              Icons.shopping_cart,
              size: 28,
            ),
          ),
        ],
      ),

      //  Body
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Promo Section
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 138, 60, 55),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get 32% Promo',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyButton(buttonText: "Redeem"),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70.0, right: 10),
                      child: Image.asset('lib/images/sushi2.png'),
                    ),
                  ),
                ],
              ),
            ),

            // TextField
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search Here...",
                // Focused Border
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 203, 92, 92),
                  ),
                ),

                // Enabled Border
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 251, 251, 251),
                  ),
                ),
              ),
            ),

            // Fod Menu Section
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Food Menu',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Image.asset('lib/images/sushi1.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Salmon Sushi',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                r'$21.00',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.deepOrange,
                                  ),
                                  Text(
                                    '4.9',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
