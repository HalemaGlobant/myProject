import 'package:find_adapter/data/pet_data.dart';
import 'package:find_adapter/pet_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {void _initData() { // Change to void to specify return type
  DefaultAssetBundle.of(context).loadString("your_asset_path_here").then((value) {
    // Use 'value' as needed
  });
}

@override
void initState() { // Remove semicolon after initState
  super.initState();
  _initData();
}
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePagesBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text("Find your friend",
                style: TextStyle(
                  fontSize:  30,
                  color:color.AppColor.homePageBackground,
                  fontWeight: FontWeight.w700
                ),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                size: 20,
                color: Colors.black45),
                SizedBox(height: 5),
                Icon(Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.black45),

              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
              Text("Welcome",
              style: TextStyle(
                fontSize:  20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w700),
              ),
                Expanded(child: Container()),

              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,

              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  color.AppColor.homePageBackground.withOpacity(0.5),
                  //color.AppColor.homePagesBackground.withOpacity(1),
                  Colors.deepPurple,
                ],
                    ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                topRight: Radius.circular(80)
              ),
                  boxShadow:[
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      color: Colors.black26,
                    ),
                  ]
            ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top:25, right: 20, ),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Do not pity a shelter pet. Adopt one.",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),

                  Container(
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        Container(

                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/paws.jpg",
                              fit: BoxFit.cover,
                              errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                                return Text('Image not found');
                              },
                            ),
                          ),
                        ),
                      ],

                    ),


                  ),


                ],


                ),

              ),

            ),


            SizedBox(height: 30,),
            Container(child: Row(
              children: [
                Text("Discover Pets",
                  style: TextStyle(
                      fontSize:  20,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.w700),
                ),

              ],),


            ),
            Expanded(
              child: Container(
                child: GridView.count(
                  children: List.generate(petData.length, (index){
                    return  PetCardWidget(petDetails: petData[index],);
                  }),

                  crossAxisCount: 2, ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
