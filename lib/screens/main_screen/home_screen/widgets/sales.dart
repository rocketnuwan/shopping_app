import 'package:flutter/material.dart';
import 'package:shopping_app/compononets/custom_images.dart';
import 'package:shopping_app/compononets/custom_text.dart';
import 'package:shopping_app/utils/app_colors.dart';
import 'package:shopping_app/utils/constants.dart';

class Sales extends StatelessWidget {
  const Sales({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 170,
          height: 252,
          margin: EdgeInsets.only(right: 21),
          child: Stack(children: [
            Container(
              width: 170,
              height: 240,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CustomNetworkImage(
                    url:
                        'https://www.weftkart.in/wp-content/uploads/2021/02/Black-02-1.jpg',
                  )),
            ),
            OfferTag(),
            FavouriteTag()
          ]),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.star,
              color: yellow,
              size: 15,
            ),
            Icon(
              Icons.star,
              color: yellow,
              size: 15,
            ),
            Icon(
              Icons.star,
              color: yellow,
              size: 15,
            ),
            Icon(
              Icons.star,
              color: yellow,
              size: 15,
            ),
            Icon(
              Icons.star,
              color: yellow,
              size: 15,
            ),
            CustomText(
              text: '(10)',
            ),
          ],
        ),
        CustomText(
          text: 'Dorothy Perkin',
          fontSize: 11,
          color: gray,
        ),
        CustomText(
          text: 'Evening Dress',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        Row(
          children: [
            CustomText(
              text: '15',
            ),
            SizedBox(
              width: 5,
            ),
            CustomText(
              text: '12',
              color: red,
            )
          ],
        )
      ],
    );
  }
}

class FavouriteTag extends StatelessWidget {
  const FavouriteTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 2,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: grayLight,
        ),
        child: Icon(
          Icons.favorite_border_outlined,
          color: hgray,
          size: 15,
        ),
      ),
    );
  }
}

class OfferTag extends StatelessWidget {
  const OfferTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8),
      child: Container(
        width: 40,
        height: 24,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(29), color: orange),
        child: Align(
          alignment: Alignment.center,
          child: CustomText(
            text: '-20%',
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
