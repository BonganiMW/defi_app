import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonTittle;

  const MyButton({super.key, this.onTap, required this.buttonTittle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(49, 158, 158, 158),
          borderRadius: BorderRadius.circular(50),
        ),
        height: 50,
        width: 350,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonTittle.text.lg
                .color(const Color.fromARGB(170, 117, 117, 117))
                .makeCentered(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_right,
                size: 24.0,
                color: Color.fromARGB(170, 117, 117, 117),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
