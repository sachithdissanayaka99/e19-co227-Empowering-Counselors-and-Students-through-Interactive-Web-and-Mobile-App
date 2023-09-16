import 'package:flutter/material.dart';

class CounselorProfile extends StatelessWidget {
  final String name;
  final String email;
  final String faculty;
  final String department;
  final String imageUrl;

  const CounselorProfile({
    Key? key,
    required this.name,
    required this.email,
    required this.faculty,
    required this.department,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //add mediaQuery
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Card(
      color: const Color.fromARGB(255, 159, 218, 245),
      margin: EdgeInsets.symmetric(
        horizontal: mediaQueryData.size.width * 0.1,
        vertical: mediaQueryData.size.height * 0.1,
      ),
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mediaQueryData.size.width * 0.02,
          vertical: mediaQueryData.size.height * 0.02,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: mediaQueryData.size.width * 0.1,
            ),
            SizedBox(width: mediaQueryData.size.width * 0.02),
            const VerticalDivider(
              color: Colors.black,
            ),
            SizedBox(width: mediaQueryData.size.width * 0.02),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Email: $email',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Faculty: $faculty',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Department: $department',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}