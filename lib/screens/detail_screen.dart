
import 'package:animal_info/screens/animal_info.dart';
import 'package:animal_info/zoo_dic/zoo_dic.dart';
import 'package:flutter/material.dart';


///Detail Page
class DetailsPage extends StatefulWidget {
  ///Constructor
  const DetailsPage({Key? key, required this.zooDictionary}) : super(key: key);

  ///
  final ZooDictionary zooDictionary;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  //center model
  late AnimationController animationController;

  /// for bottom slide
 
  late Animation<int> animation;
  late Animation<Offset> offset ;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 900),
        reverseDuration: const Duration(milliseconds: 800));

    offset = Tween<Offset>(begin:const Offset(0.0, 1.0), end:const Offset(0.0, 0.0))
            .animate(animationController);
        animationController.forward();

    super.initState();
  }

  

  void _navigateBack() {
    animationController.reverse().whenComplete(() => Navigator.pop(context));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  bool isLoading = true;
  double width = 300;
  double height = 200;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          
          appBar: AppBar(
             backgroundColor: Colors.transparent,
      elevation: 0,
            leading:InkWell(
              onTap: (){
               _navigateBack();
       Future<bool>.value(false);
              },
              child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
            actions:const <Widget>[
              Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.favorite_border_outlined,color: Colors.black,))
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children:<Widget> [
                /// center model
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                       height: MediaQuery.of(context).size.height*0.45 ,

                      child: Center(
                        child: AnimatedBuilder(
                          animation: animationController.view,
                          builder: (BuildContext context, Widget? child) {
                            return Transform.scale(
                              scale: animationController.value,
                              child: child,
                            );
                          },
                          child: SizedBox(
                             height: MediaQuery.of(context).size.height*0.5 ,
                            width: MediaQuery.of(context).size.width,
                            child:  Image.asset(widget.zooDictionary.png,fit: BoxFit.cover,),
                           
                          ),
                        ),
                      ),
                    )),

                /// for bottom slide
                  SlideTransition(
                      position: offset,
                      child: Transform(
                        transform: Matrix4.translationValues(0.0, 0, 0.0),
                        child: Container(
                       height: MediaQuery.of(context).size.height*0.6 ,
                            width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                                // soften the shadow
                        borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(25),
                                topLeft: Radius.circular(25)
                              ),
                                                  boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 36, // soften the shadow
                                spreadRadius: 15.0, //extend the shadow
                                
                              )
                            ]
                          
                          ),
                          child:AnimalInfo(zooDictionary: widget.zooDictionary)
                        ),
                      ))
              ],
            ),
          )),
    );
  }
}
