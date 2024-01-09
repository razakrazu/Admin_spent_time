import 'package:flutter/material.dart';

class HotalAddImageWidgets extends StatelessWidget {
  const HotalAddImageWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 250,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 370,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            'lib/assets/sdjnjnja.jpg',
                          ),
                          fit: BoxFit.fill)),
                );
              },
            ),
          );
  }
}
