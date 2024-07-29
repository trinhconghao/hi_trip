import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home/components/section_title.dart';

import 'custom_title.dart';

class CategoriesList extends StatelessWidget {
  final List<Category> categories = [
    Category('Category 1', 'assets/icons/dang_giao.png'),
    Category('Category 2', 'assets/icons/dang_giao.png'),
    Category('Category 3', 'assets/icons/dang_giao.png'),
    Category('Category 4', 'assets/icons/dang_giao.png'),
    Category('Category 5', 'assets/icons/dang_giao.png'),
    Category('Category 6', 'assets/icons/dang_giao.png'),
    Category('Category 7', 'assets/icons/dang_giao.png'),
    Category('Category 8', 'assets/icons/dang_giao.png'),
    Category('Category 9', 'assets/icons/dang_giao.png'),
    Category('Category 10', 'assets/icons/dang_giao.png'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth / 5; // Chiều rộng của mỗi item
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom:10 ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTitle(
                title: "Danh mục",
                subtitle: "Danh mục các sản phẩm",
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 2 * 2, // Chiều cao tối thiểu của GridView
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 5, // Số lượng items tối đa trên mỗi hàng
                    children: List.generate(categories.length, (index) {
                      return CategoryItem(category: categories[index]);
                    }),
                  ),
                ),
              ],
            ),
          )
          ,Row(
            children: [
              for (var category in categories)
                CategoryItem(category: category),
            ],
          )


        ],
      );
      /*
      GridView.count(
      crossAxisCount: 5, // Số lượng items tối đa trên mỗi hàng
      children: categories.map((category) {
        return CategoryItem(category: category);
      }).toList(),
    );

       */
  }
}

class Category {
  final String name;
  final String imagePath;

  Category(this.name, this.imagePath);
}

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth / 5; // Chiều rộng của mỗi item

    return SizedBox(
      width: itemWidth,
      height: itemWidth * 2, // Chiều cao của mỗi item
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            category.imagePath,
            width: itemWidth * 0.8, // Kích thước ảnh
            height: itemWidth * 0.8,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(
            category.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}