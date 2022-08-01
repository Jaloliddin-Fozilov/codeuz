import 'package:flutter/material.dart';

import 'package:codeuz/controllers/get_categories_from_firebase.dart';
import 'package:codeuz/models/category_model.dart';

class HomeCategoriesSlideBlock extends StatelessWidget {
  HomeCategoriesSlideBlock({
    Key? key,
  }) : super(key: key);

  List<CategoryModel> listCategories = GetCategoriesFromFirebase().list;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: listCategories
            .map(
              (category) => GestureDetector(
                onTap: () {
                  print(category.id);
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Image.network(
                          '${category.icon}',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: 50,
                        child: Text(
                          '${category.short}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
