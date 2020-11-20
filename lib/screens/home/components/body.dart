
import 'package:E_Commerce_UI/constants.dart';
import 'package:E_Commerce_UI/models/Product.dart';
import 'package:E_Commerce_UI/screens/details/details_screen.dart';
import 'package:E_Commerce_UI/screens/home/components/categories.dart';
import 'package:flutter/material.dart';

import 'item_cart.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Padding(
        padding: const EdgeInsets.
        symmetric(horizontal: kDefaultPaddin),
        child: Text(
          'Women',
          style: Theme.of(context).
          textTheme.headline5.
          copyWith(fontWeight: FontWeight.bold),
        ),
      ),
       Categories(),
       Expanded(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin/1.6),
           child: GridView.builder(
           itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin/4,
                crossAxisSpacing: kDefaultPaddin/4,
                childAspectRatio: 0.75,
      ),
       itemBuilder: (context,index)=>ItemCard(

         product: products[index],
         press: ()=>Navigator.push(
           context, MaterialPageRoute(
          builder: (context)=>DetailsScreen(
           product:products[index],
         ),
         ),
         ),
         ),
       ),
         ),
       ),
      ],
      
    );
  }
}

