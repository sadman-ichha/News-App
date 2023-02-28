import 'package:flutter/material.dart';

class PlaceholderEffect extends StatelessWidget {
  const PlaceholderEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      margin: const EdgeInsets.only(bottom: 10.0),
      color: Colors.grey.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100.0,
              width: 60.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            const SizedBox(width: 30.0),
            Expanded(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10.0,
                    width: 260.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  const SizedBox(height: 12.0),
                  Container(
                    height: 10.0,
                    width: 260.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  const SizedBox(height: 12.0),
                  Container(
                    height: 10.0,
                    width: 260.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  const SizedBox(height: 12.0),
                  Container(
                    height: 10.0,
                    width: 260.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
