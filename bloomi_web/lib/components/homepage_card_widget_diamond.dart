import 'package:bloomi_web/components/homepage_class.dart';
import 'package:bloomi_web/components/homepage_constants.dart';
import 'package:bloomi_web/components/homepage_description_page_diamond.dart';
import 'package:flutter/material.dart';

class CardWidgetDiamond extends StatelessWidget {
  const CardWidgetDiamond({super.key, required this.items});
  final ItemClass items;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Clickable thing
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPageDiamond(
                items: items,
              );
            },
          ),
        );
      },
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 300,
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: kDouble5,
              ),
              SizedBox(
                height: 200,
                child: Image.asset(
                  items.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 50,
                child: Text(
                  items.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: kDouble10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
