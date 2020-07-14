import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  List<String> categories = ['messages', 'Online', 'Groups', 'Request'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (
          BuildContext context,
          int idx,
        ) {
          return GestureDetector(onTap: (){
            selectedIndex = idx;
          },
            child: Padding( padding: EdgeInsets.symmetric(horizontal: 20.0 ,vertical: 30.0),child: Text(categories[idx],style: TextStyle(
              color: idx == selectedIndex ? Colors.white : Colors.white60,fontSize: 24.0,fontWeight: FontWeight.bold,letterSpacing: 1.2
            ),)),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
      height: 90.0,
      color: Theme.of(context).primaryColor,
    );
  }
}
