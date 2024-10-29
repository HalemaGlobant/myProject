import 'package:find_adapter/details_page.dart';
import 'package:flutter/material.dart';

class PetCardWidget extends StatelessWidget {
  const PetCardWidget({super.key, required this.petDetails});

  //--- Class attribute
  final Map petDetails;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // --- Move to the page
        Navigator.push(context, MaterialPageRoute(builder:(context)=> DetailsPage(petDetails:petDetails)));
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image:
          AssetImage(
              petDetails["img"]

          ),
          ),
        ),
        child: Center(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(

                petDetails["name"],
            ),
          ),
        ),
      ),
    );
  }
}
