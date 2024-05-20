import 'package:ui_company_profile/widget/category.dart';
import 'package:ui_company_profile/widget/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  color: Colors.brown,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/foto.jpg"),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Halo Jauza, Selamat Datang !",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.notifications_active,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F7),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: "Cari Toko Coffe Favoritmu",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Category(imagePath: "assets/tubruk.png", title: "Tubruk"),
                  Category(
                    imagePath: "assets/mesin.png",
                    title: "Espresso",
                  ),
                  Category(imagePath: "assets/cup.png", title: "Latte"),
                  Category(imagePath: "assets/biji.png", title: "Biji"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Menu Favorit ☕️",
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CoffeShop(
              imagePath: "assets/seraddo.jpg",
              nameShop: "Serrado Brazil",
              rating: "4.8",
            ),
            CoffeShop(
              imagePath: "assets/ethiopia.jpg",
              nameShop: "Ethiopia Guji",
              rating: "4.9",
            ),
            CoffeShop(
              imagePath: "assets/cappucino.jpg",
              nameShop: "Cappuccino Latte",
              rating: "4.7",
            ),
            CoffeShop(
              imagePath: "assets/kolombia.jpg",
              nameShop: "Kolombia Kindio",
              rating: "4.9",
            ),
          ],
        ),
      ),
    );
  }
}
