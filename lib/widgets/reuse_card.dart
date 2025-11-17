import 'package:flutter/material.dart';



class ReUseCard extends StatelessWidget {

  final String? time;
  final IconData? icon;
  final String? temperature;

  const ReUseCard({super.key, required this.time,required this.icon, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        child: Column(
          spacing: 16,
          children: [
            Text("$time",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),),
            Icon(icon,size: 32,),
            Text("$temperature",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
