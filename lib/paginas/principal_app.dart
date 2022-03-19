import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'home.dart';

class PrincipalApp extends StatefulWidget {
 // Principal({Key? key}) : super(key: key); ya que lo usamos de manera estatica lo podemos quitar

  @override
  State<PrincipalApp> createState() => _PrincipalAppState();
}

class _PrincipalAppState extends State<PrincipalApp> {
  int activeTab=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 218, 228),
      bottomNavigationBar: 
      botoneFooter(), 
      body: getPaginas(),

/*BottomNavigationBar(
        currentIndex: _paginaActual,
        items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.home,
            color: Colors.white24,
            ),
            label: "Home"),

        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.book,
            color: Colors.white24,
            ),
            label: "Home"),

        ],
      )
      */
    );//en vez de container

  }

  Widget getPaginas(){
    return IndexedStack(
      index: activeTab,
      children: [
        PaginaPrincipal(),
       
      ],
    );
  }

  Widget botoneFooter(){
    List items=[//creamos un array con la lista de los iconos que necesitamos
        FeatherIcons.home,
        FeatherIcons.search,
        FeatherIcons.heart,
        FeatherIcons.user,
    ];
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Color.fromARGB(255, 204, 218, 228)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index){//indicamos la cantidad de botones
            return IconButton(
              onPressed: (){//metodo onclick
              setState(() {
                activeTab=index;//creamos una variable llamada ativitab y la inicilializamos con 0
              });
            }
            , icon: Icon(//llamamos los botones a utilizar
              items[index], 
             color: activeTab==index ? Color.fromARGB(255, 160, 21, 185) : Colors.black,)
             );
          }),
        ),
      ),
    );
  }
}