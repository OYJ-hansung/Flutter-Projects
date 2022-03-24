import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String url;
  final Difficulty difficulty;
  final String time;

  CategoryItem(
      this.id, this.title, this.color, this.url, this.difficulty, this.time);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  String get difficultyText {
    switch (difficulty) {
      case Difficulty.Simple:
        return '쉬움';
        break;
      case Difficulty.Challenging:
        return '어려움';
        break;
      case Difficulty.Hard:
        return '매우 어려움';
        break;
      default:
        return '측정 안됨';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    url,
                    height: 70,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 1,
                  left: 30,
                  top: 40,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    width: 300,
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      // overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.hiking,
                          size: 15,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 50.0,
                            ),
                            child: Text(difficultyText,
                                style: TextStyle(fontSize: 10))),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.schedule,
                          size: 15,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 70.0,
                            ),
                            child: Text(time, style: TextStyle(fontSize: 10))),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
