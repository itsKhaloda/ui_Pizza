import 'package:flutter/material.dart';
import 'package:myapp/customCard/customCardModel.dart';

class CustomeCard extends StatelessWidget {
  final CustomCardModel cardModel;
  CustomeCard({required this.cardModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (this.cardModel.onCardClick != null) {
          this.cardModel.onCardClick!();
        }
      },
      child: Card(
        color: Color.fromRGBO(243, 244, 245, 1),
        child: Container(
          height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInImage.assetNetwork(
                placeholder: "assets/images/user-placeholder.jpeg",
                image: "${this.cardModel.image}",
                width: 75.0,
                height: 75.0,
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                "${this.cardModel.title}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                "${this.cardModel.subtitle}",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
