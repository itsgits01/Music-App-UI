import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(child: child,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[300],
        boxShadow: [
          //darker shadow on bottom right
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: Offset(5, 5),
          ),
          //

          const BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-5, -5),
          ),
        ],
      ),
    );
  }
}
