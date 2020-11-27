
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Universidades",
     subtitle: "March, Wednesday",
      event: "3 Events",
      img: "assets/calendar.png");

  Items item2 = new Items(
    title: "Orientadores",
    subtitle: "Más de 50 especialistas",
    event: "4 Online",
    img: "assets/food.png",
  );
  Items item3 = new Items(
    title: "Simulador",
    subtitle: "Proyecta tus proximos gastos",
    event: "",
    img: "assets/map.png",
  );
  Items item4 = new Items(
    title: "Expos",
    subtitle: "Descubre los proximos eventos",
    event: "",
    img: "assets/festival.png",
  );
  Items item5 = new Items(
    title: "Comparador",
    subtitle: "¿Indeciso? Compara!",
    event: "",
    img: "assets/todo.png",
  );
  Items item6 = new Items(
    title: "Mis Favoritos",
    subtitle: "",
    event: "",
    img: "assets/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xFFF2924B;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 72,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
