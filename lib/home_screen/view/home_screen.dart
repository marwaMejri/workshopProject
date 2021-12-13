import 'package:flutter/material.dart';
import 'package:flutter_workshp_project/home_screen/utils/constants.dart';
import 'package:flutter_workshp_project/home_screen/widgets/add_to_cart_button.dart';
import 'package:flutter_workshp_project/home_screen/widgets/favorite_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          homeAppBarTitle,
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        /**
         * to take the space of its children only
         */
        shrinkWrap: true,
        /**
         * add padding for every element in the list
         */
        padding: EdgeInsets.only(
          left: 13,
          right: 13,
          top: 40,
        ),
        children: <Widget>[
          /**
           * add clipRRect widget to the image to add radius
           */
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            child: Image.asset(
              ('assets/food_image.jpg'),
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          /**
           * sizedBox is another way to add padding between widgets
           */
          SizedBox(
            height: 15,
          ),
          Text(
            homeImageTitle,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            homeImageDescription,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[FavoriteButtonWidget(), AddToCartButton()],
            ),
          )
        ],
      ),
    );
  }
}
