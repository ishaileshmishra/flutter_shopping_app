import 'package:flutter/material.dart';


class ProductCategory extends StatefulWidget {
  const ProductCategory({
    Key key,
    @required this.categories,
  }) : super(key: key);

  final List categories;

  @override
  _ProductCategoryState createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {

  int selectedIndex = 0;

  @override
  void initState() {
    setState(() {
      selectedIndex = 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    List categories = widget.categories;
    return Container(
      height: 50,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, position) {
            return InkWell(
              onTap: (){
                print(categories[position]);
                setState(() {
                  selectedIndex = position;
                });
              } ,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Card(
                  elevation: 2,
                  child: Container(
                    height: 60,
                    width: 130,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: position == selectedIndex
                            ? Border.all(
                            color: Colors.deepPurple,
                            width: 1
                        ): Border.all(
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                      child: Text(
                        categories[position].toString().toUpperCase(),
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}