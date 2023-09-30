import 'package:bloomi_web/components/counselor_list_view.dart';
import 'package:bloomi_web/components/custom_card_widget.dart';
import 'package:bloomi_web/components/footer.dart';
import 'package:flutter/material.dart';

class UserAppointmentDashboard extends StatefulWidget {
  const UserAppointmentDashboard({Key? key}) : super(key: key);

  @override
  State<UserAppointmentDashboard> createState() =>
      _UserAppointmentDashboardState();
}

class _UserAppointmentDashboardState extends State<UserAppointmentDashboard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        height: 400,
                        child: CounselorListView(),
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Your Appointments",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomCardWidget(),
                  ],
                ),
              ),
              Footer(height: 55, width: width),
            ],
          ),
        ),
      ),
    );
  }
}
