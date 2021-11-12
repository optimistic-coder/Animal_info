import 'package:animal_info/screens/detail_screen.dart';
import 'package:animal_info/zoo_dic/zoo_dic.dart';
import 'package:flutter/material.dart';
import 'package:animal_info/zoo_dic/zoo_colors.dart';

///Home Screen
class Home extends StatelessWidget {

  ///COnstructor
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: zooDictionaryMap.length,
          itemBuilder: (BuildContext context, int index) {
           
            return InkWell(
              onTap: (){
                 Navigator.push(
        context,
        MaterialPageRoute<Widget>(
            builder: (_) =>  DetailsPage(zooDictionary:zooDictionaryMap[index])));
              },
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: index % 2 == 0?Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: const Color(card1Color)),
                    child: Image.asset(zooDictionaryMap[index].png)):Container(
                    decoration: const BoxDecoration(
                        color:  Color(card3Color)),
                    child: Image.asset(zooDictionaryMap[index].png)),
              ),
            );
          }),
    );
  }
}