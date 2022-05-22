import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

final List<String> _categories = [
  'Industrial Engineering',
  'Automobile - Automotive Industry',
  'Home & Lifestyle',
  'Building & Construction',
  'Science & Tech',
  'Medical & Pharma',
  'Food & Drink',
  'Apparel & Clothing',
  'Electric & Electronics',
  'Business',
  'Community',
  'Power & Energy',
  'Fashion',
  'Others',
];

final List<String> _assets = [
  'assets/images/industrial_engineering.jpg',
  'assets/images/automotive.jpg',
  'assets/images/home_lifestyle.jpg',
  'assets/images/building_construction.jpg',
  'assets/images/science_tech.jpg',
  'assets/images/medical_pharma.jpg',
  'assets/images/food_drink.jpg',
  'assets/images/apparel_clothing.jpg',
  'assets/images/electric_engineering.jpg',
  'assets/images/business.jpg',
  'assets/images/community.jpg',
  'assets/images/power_tech.jpg',
  'assets/images/fashion.jpg',
  'assets/images/others.jpg',
];

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_assets[index]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Gap(5),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Text(
              _categories[index],
              style: Theme.of(context).textTheme.titleSmall,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      separatorBuilder: (_, index) => const Gap(20),
      itemCount: _categories.length,
    );
  }
}
