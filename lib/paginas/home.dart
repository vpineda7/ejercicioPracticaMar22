

import 'package:flutter/material.dart';
import 'package:spotifyclone2/paginas/albumpagina.dart';

import '../constantes/const.dart';
import 'package:page_transition/page_transition.dart';

class PaginaPrincipal extends StatefulWidget {
  PaginaPrincipal({Key? key}) : super(key: key);

  @override
  State<PaginaPrincipal>  createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int activoMenu1=0;
  int activoMenu2=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 218, 228),
      appBar: AppBar(
        title: mostrarAppBar(),
        toolbarHeight: 90,
        ),
        body: bodyAppSpf(),
    );
  }

  Widget mostrarAppBar(){

    return AppBar(
      backgroundColor: Color.fromARGB(255, 204, 218, 228),
      elevation: 0,
      toolbarHeight: 70,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("MUSIC", style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
              ),
            ),
            // Container(
            //   height: 150,
            //   width: 150,
            //   decoration: BoxDecoration(
            //   image: DecorationImage(image: AssetImage("assets/images/person.jpg"),
            //     fit: BoxFit.cover,
            //   ),
            //   color: Colors.black, borderRadius: BorderRadius.circular(10)),
            // ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/person.jpg",),
              backgroundColor: Colors.red,
              maxRadius: 25,

            ),
                
          ],
        ),
      ),
    );

  }

  Widget bodyAppSpf(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //crossAxisAlignment: CrossAxisAlignment.start,
            child: 
              Padding(
                padding: const EdgeInsets.only(left: 20, top:20 ),
                child: Row( 
                  children: List.generate(song_type_1.length, (index){
                   return Padding(
                     padding: const EdgeInsets.only(right: 25),
                     child: GestureDetector(
                      onTap: (){
                        setState(() {
                          activoMenu1=index;
                        });
                     },
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              song_type_1[index], 
                              style: TextStyle(
                                //color: Colors.grey,
                                fontSize: 15,
                                color: activoMenu1==index ? Colors.black : Colors.black,
                                fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activoMenu1==index 
                            ? Container(
                              width: 10,
                              height: 3,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)  
                              ),
                            )
                            :Container()
                          ],
                        ),
                     ),
                   );
                  })
                ),
              )
            ,
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(songs.length, (index) {//cantidad de container
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, PageTransition(
                            alignment: Alignment.bottomCenter,
                            child: AlbumPagina(
                              song: songs[index],
                            ),
                             type: PageTransitionType.scale));//pagina a envocar
                        },
                        child: Column( 
                          children: [
                            Container(
                              height: 180,
                               width: 180,
                               decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage(songs[index]['img']),
                                 fit: BoxFit.cover),
                                 color: Colors.black, borderRadius: BorderRadius.circular(10)),
                               ),
                               SizedBox(height: 20,),
                               Text(songs[index]['title'], style: TextStyle(
                                 fontSize: 15, 
                                 color: Colors.black,
                                 fontWeight: FontWeight.w600),),

                               
                          ],
                        ),
                      ),
                    );
                  })),
            ),
          ),
          SizedBox(height: 10,),

          //segundo
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //crossAxisAlignment: CrossAxisAlignment.start,
            child: 
              Padding(
                padding: const EdgeInsets.only(left: 20, top:20 ),
                child: Row( 
                  children: List.generate(song_type_2.length, (index){
                   return Padding(
                     padding: const EdgeInsets.only(right: 25),
                     child: GestureDetector(
                      onTap: (){
                        setState(() {
                          activoMenu2=index;
                        });
                     },
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              song_type_2[index], 
                              style: TextStyle(
                                //color: Colors.grey,
                                fontSize: 15,
                                color: activoMenu2==index ? Colors.black : Colors.grey,
                                fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activoMenu2==index 
                            ? Container(
                              width: 10,
                              height: 3,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)  
                              ),
                            )
                            :Container()
                          ],
                        ),
                     ),
                   );
                  })
                ),
              )
            ,
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(songs2.length, (index) {//cantidad de container
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, PageTransition(
                            alignment: Alignment.bottomCenter,
                            child: AlbumPagina(
                              song: songs2[index], 
                            ),
                             type: PageTransitionType.scale));//pagina a envocar
                        },
                        child: Column( 
                          children: [
                            Container(
                              height: 180,
                               width: 180,
                               decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage(songs2[index]['img']),
                                 fit: BoxFit.cover),
                                 color: Colors.black, borderRadius: BorderRadius.circular(10)),
                               ),
                               SizedBox(height: 20,),
                               Text(songs2[index]['title'], style: TextStyle(
                                 fontSize: 15, 
                                 color: Colors.black,
                                 fontWeight: FontWeight.w600),),

                               
                          ],
                        ),
                      ),
                    );
                  })),
            ),
          )
          //fin segundo
          
        ],
      ));
  }
}
