import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;

  const Features({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.33,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red.shade900,
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(
            '$imageUrl',
          ),
        ),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$title",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 60.0,
                      child: Text(
                        "$subTitle",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.012,
                    ),
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_forward_sharp,
                        size: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Image
        ],
      ),
    );
  }
}
