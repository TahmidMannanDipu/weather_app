import 'package:flutter/material.dart';

class AdditionalInfoCard extends StatelessWidget {
  const AdditionalInfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData? icon;
  final String? label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Icon(icon,
          size: 40,
        ),
        Text("$label"),
        Text("$value",style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),),
      ],
    );
  }
}