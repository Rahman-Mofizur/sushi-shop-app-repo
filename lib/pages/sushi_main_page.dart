import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_shop_app/components/button.dart';

class MySushiStore extends StatefulWidget {
  const MySushiStore({super.key});

  @override
  State<MySushiStore> createState() => _MySushiStoreState();
}

class _MySushiStoreState extends State<MySushiStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'SUSHI MAN',
              style:
                  GoogleFonts.dmSerifDisplay(color: Colors.white, fontSize: 28),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/sushi.png'),
            ),
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Feel the taste of the most popular Japanese food from anywhere in the world!',
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const MyButton(
              buttonText: 'Get Started',
            ),
          ],
        ),
      ),
    );
  }
}
