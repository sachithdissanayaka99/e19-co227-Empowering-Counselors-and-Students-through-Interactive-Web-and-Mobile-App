import 'package:bloomi_web/controllers/appoinment_controller.dart';
import 'package:bloomi_web/providers/admin/counselor_registration_provider.dart';
import 'package:bloomi_web/utils/util_constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PendingAppointments extends StatefulWidget {
  const PendingAppointments({Key? key}) : super(key: key);

  @override
  State<PendingAppointments> createState() => _PendingAppointmentsState();
}

class _PendingAppointmentsState extends State<PendingAppointments> {
  int? count;

  @override
  void initState() {
    super.initState();
    count = 0;
    fetchAppointmentsCount();
  }

  void fetchAppointmentsCount() {
    final provider =
        Provider.of<CounsellorRegistrationProvider>(context, listen: false);
    Stream<int> appointmentsStream = AppointmentController()
        .getPendingCountByCounselorId(provider.counsellorModel!.uid);

    appointmentsStream.listen((snapshot) {
      setState(() {
        count = snapshot;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: const Color.fromARGB(255, 182, 185, 209),
      elevation: 10,
      shadowColor: UtilConstants.greyColor.withOpacity(0.8),
      child: Padding(
        padding: width < 480
            ? const EdgeInsets.symmetric(horizontal: 10, vertical: 20)
            : const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Pending Appointments",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: width < 480 ? 13.0 : 15.0,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              count?.toString() ?? '0',
              style: TextStyle(fontSize: width < 480 ? 13.0 : 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
