import 'package:flutter/material.dart';

class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffffe7dc),
      body: SafeArea(
        child: SizedBox(
          height: h,
          width: w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 45,
                      color: Color(0xfff43127),
                    ),
                    ListView(
                      children: [
                        ListTile(
                          title: Text("Location"),
                          subtitle: Text("XYZ Location ABC Street"),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
