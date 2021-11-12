import 'package:animal_info/zoo_dic/zoo_colors.dart';
import 'package:animal_info/zoo_dic/zoo_dic.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///Animal information
class AnimalInfo extends StatelessWidget {
  ///constructor
  const AnimalInfo({ Key? key, required this.zooDictionary}) : super(key: key);

   ///
  final ZooDictionary zooDictionary;

  @override
  Widget build(BuildContext context) {
              return  Column(
                        children: <Widget>[
                                 Container(
                                   height: 3,
                                   width: 70,
                                  margin:const EdgeInsets.only(top: 20),
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(Radius.circular(25))
                                  ),  
                                ),
                                Container(
                                  margin:const EdgeInsets.only(top: 30),
                                  decoration: const BoxDecoration(
                                    color: Color(card1Color)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(zooDictionary.name,style: GoogleFonts.poppins(textStyle:const  TextStyle(
                                      fontWeight: FontWeight.w500
                                    )),)),
                                ),
                                Padding(padding:const EdgeInsets.only(top: 25),
                                child: Container(
                                  margin:const EdgeInsets.symmetric(horizontal: 30) ,
                                  child: Text(zooDictionary.description,style: GoogleFonts.poppins(textStyle:const  TextStyle(
                                      fontWeight: FontWeight.normal)
                                      )),),
                                ),

                                Padding(padding:const EdgeInsets.only(top: 25),
                                child: Container(
                                  padding: const EdgeInsets.all(5) ,
                                  margin:const EdgeInsets.symmetric(horizontal: 30) ,
                                  decoration: const BoxDecoration(
                                    color: Color(card1Color),
                                    borderRadius: BorderRadius.all(Radius.circular(4))

                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text("height",style: GoogleFonts.poppins(textStyle: const TextStyle(
                                            fontSize: 12,
                                      fontWeight: FontWeight.normal)
                                      )),
                                          Text(zooDictionary.height,style: GoogleFonts.poppins(textStyle: const TextStyle(
                                            fontSize: 12, fontWeight: FontWeight.normal))
                                      )
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Text("weight",style: GoogleFonts.poppins(textStyle: const TextStyle(
                                            fontSize: 12,fontWeight: FontWeight.normal))),
                                          Text(zooDictionary.weight,style: GoogleFonts.poppins(textStyle: const TextStyle(
                                            fontSize: 12,fontWeight: FontWeight.normal))
                                      )
                                        ],

                                      ),
                                      Column(
                                        children: <Widget>[
                                          Text("lifeSpan",style: GoogleFonts.poppins(textStyle: const TextStyle(
                                            fontSize: 12,fontWeight: FontWeight.normal))),
                                          Text(zooDictionary.lifeSpan,style: GoogleFonts.poppins(textStyle: const TextStyle(
                                            fontSize: 12, fontWeight: FontWeight.normal)))
                                        ],

                                      ),

                                    ],
                                  )
                                ),
                                ),  
                              ],
                            );
  }
}