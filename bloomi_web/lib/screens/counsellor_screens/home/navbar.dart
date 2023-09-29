import 'package:bloomi_web/components/custom_text.dart';
import 'package:bloomi_web/components/footer.dart';
import 'package:bloomi_web/providers/nav_provider/navigation_provider.dart';
import 'package:bloomi_web/screens/counsellor_screens/calender/calendar_home.dart';
import 'package:bloomi_web/screens/counsellor_screens/chat/home/chat_counsellor.dart';

import 'package:bloomi_web/screens/counsellor_screens/dashboard/dashboard.dart';
import 'package:bloomi_web/screens/counsellor_screens/home/drawer.dart';
import 'package:bloomi_web/screens/counsellor_screens/home/topbar_contents.dart';
import 'package:bloomi_web/screens/counsellor_screens/profile/profile_home.dart';
import 'package:bloomi_web/screens/home_screens/note/note.dart';
import 'package:bloomi_web/utils/util_constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounselorHome extends StatefulWidget {
  const CounselorHome({Key? key}) : super(key: key);

  @override
  State<CounselorHome> createState() => _CounselorHomeState();
}

class _CounselorHomeState extends State<CounselorHome> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var width = mediaQueryData.size.width;
    final List<Widget> widgets = [
      const Dashboard(),
      const CalendarHome(),
      const ChatCounsellor(),
      const ProfileHome(),
      const Note(),
    ];
    return Scaffold(
      appBar: (width <= 900)
          ? AppBar(
              iconTheme: const IconThemeData(color: UtilConstants.primaryColor),
              backgroundColor: UtilConstants.lightgreyColor,
              elevation: 0,
              centerTitle: true,
              title: CustomText("BLOOMI",
                  fontSize: mediaQueryData.size.width * 0.03,
                  fontWeight: FontWeight.w300,
                  fontColor: UtilConstants.primaryColor))
          : PreferredSize(
              preferredSize: Size(width, 70),
              child: const CounsellorNavBar(),
            ),
      body: Consumer<NavigationProvider>(
        builder: (context, value, child) {
          return widgets[value.currentIndex];
        },
      ),
      drawer: const Padding(
        padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
        child: CounselorDrawer(),
      ),
      bottomNavigationBar: Footer(height: 55, width: width),
    );
  }
}
