import 'package:flutter/material.dart';



class ReUseCard extends StatelessWidget {

  final String? time;
  final IconData? icon;
  final String? latitude;

  const ReUseCard({super.key, required this.time,required this.icon, required this.latitude});

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
            Text("$time",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),),
            Icon(icon,size: 32,),
            Text("$latitude",style: TextStyle(
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
