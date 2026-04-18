import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smart_ph/core/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(dotenv.get('APP_NAME')),
            Row(
              children: [
                Icon(Ionicons.location_outline, size: 12.sp),
                AppText('Antipolo, Rizal, PH', fontSize: 12.sp),
              ],
            ),
          ],
        ),
        leading: Image.asset('assets/icons/app_logo.png'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          
          
        ],
      ),
    );
  }
}
