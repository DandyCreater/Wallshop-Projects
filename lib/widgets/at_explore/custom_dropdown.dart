import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final String title;
  const CustomDropDown({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      width: 90.0,
      height: 30.0,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(
            "$title",
            style: TextStyle(fontSize: 12),
          ),
          Expanded(
            child: IconButton(
              padding: const EdgeInsets.only(bottom: 0),
              onPressed: () {},
              icon: Icon(Icons.expand_more),
            ),
          )
        ],
      ),
    );
  }
}
