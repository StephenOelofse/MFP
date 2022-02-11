import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

//import '../models/nutrition.dart';
//import '../providers/calories_provider.dart';

List<Widget> recipeWidgets = [
  RecipeCategory(itemList: createDataset(dataSet)),
  RecipeCategory(itemList: createDataset(dataSet2)),
  RecipeCategory(itemList: createDataset(dataSet)),
  RecipeCategory(itemList: createDataset(dataSet2)),
];

class RecipeCategory extends StatefulWidget {
  const RecipeCategory({Key? key, required this.itemList}) : super(key: key);

  final List<Widget> itemList;

  @override
  State<RecipeCategory> createState() => _RecipeCategoryState();
}

class _RecipeCategoryState extends State<RecipeCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text(
                    'Category Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Text('View More'),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 5,
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: widget.itemList,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: FittedBox(
              child: Image.network(imageUrl),
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 5),
            child: Row(
              children: const [Text('Recipe Name')],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Calories'), Icon(Icons.bookmark_outline)],
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> createDataset(List item) {
  List<Widget> outputList = [];
  for (var i = 0; i < item.length; i++) {
    outputList.add(RecipeCard(imageUrl: item[i]));
  }
  return outputList;
}

List<String> dataSet = [
  'https://media.istockphoto.com/photos/colorful-vegetables-and-fruits-vegan-food-in-rainbow-colors-picture-id1284690585',
  'https://media.istockphoto.com/photos/foods-high-in-zinc-picture-id1289940519',
  'https://media.istockphoto.com/photos/grilled-chicken-meat-and-fresh-vegetable-salad-of-tomato-avocado-and-picture-id1295633127',
  'https://images.unsplash.com/photo-1606787366850-de6330128bfc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
];

List<String> dataSet2 = [
  'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1310&q=80',
  'https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
  'https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1349&q=80'
];
