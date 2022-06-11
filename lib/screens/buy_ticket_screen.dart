import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_ticket_app/helper/painter.dart';
import 'package:movie_ticket_app/screens/detail_pay_screen.dart';
import 'package:movie_ticket_app/widgets/textFrave.dart';

class BuyTicketPage extends StatefulWidget {
  final String titleMovie;
  final String imageMovie;

  const BuyTicketPage(
      {Key? key, required this.titleMovie, required this.imageMovie})
      : super(key: key);

  @override
  State<BuyTicketPage> createState() => _BuyTicketPageState();
}

class _BuyTicketPageState extends State<BuyTicketPage> {
  String DATE = "";
  String TIME = "";
  int count = 0;
  List<String> a = [];
  bool date1 = false;
  bool date2 = false;
  bool date3 = false;
  bool date4 = false;
  bool date5 = false;
  bool date6 = false;
  bool time1 = false;
  bool time2 = false;
  bool time3 = false;
  bool time4 = false;
  bool time5 = false;
  bool chair1 = false;
  bool chair2 = false;
  bool chair3 = false;
  bool chair4 = false;
  bool chair5 = false;
  bool chair6 = false;
  bool chair7 = false;
  bool chair8 = false;
  bool chair9 = false;
  bool chair10 = false;
  bool chair11 = false;
  bool chair12 = false;
  bool chair13 = false;
  bool chair14 = false;
  bool chair15 = false;
  bool chair16 = false;
  bool chair17 = false;
  bool chair18 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: size.height, width: size.width, color: Color(0xff21242C)),
          Container(
            height: size.height * .7,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.imageMovie))),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Color(0xff21242C),
                  Color(0xff21242C).withOpacity(.9),
                  Color(0xff21242C).withOpacity(.1),
                ]),
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 20.0,
                    sigmaY: 20.0,
                  ),
                  child: Container(
                    color: Color(0xff21242C).withOpacity(0.1),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 30,
              child: Container(
                width: size.width,
                child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Row(
                      children: [
                        Icon(Icons.arrow_back_ios_new_rounded,
                            color: Colors.white),
                        SizedBox(width: 20.0),
                        TextFrave(
                            text: widget.titleMovie,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)
                      ],
                    )),
              )),
          Positioned(
              top: 100,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20),
                      height: 90,
                      width: size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () {
                              DATE = "Thu 8";
                              date1 = true;
                              date2 = false;
                              date3 = false;
                              date4 = false;
                              date5 = false;
                              date6 = false;
                            setState(() {});},
                            child: Container(
                              height: 100,
                              width: 75,
                              decoration: BoxDecoration(
                                  color:date1 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.circle,
                                      color: Color(0xff21242C).withOpacity(.8),
                                      size: 12),
                                  SizedBox(height: 10.0),
                                  TextFrave(
                                      text: "Thu",
                                      color: Colors.white,
                                      fontSize: 17),
                                  SizedBox(height: 5.0),
                                  TextFrave(
                                      text: "8",
                                      color: Colors.white,
                                      fontSize: 30),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              DATE = "Fri 9";
                              date1 = false;
                              date2 = true;
                              date3 = false;
                              date4 = false;
                              date5 = false;
                              date6 = false;
                            setState(() {});
                            },
                            child: Container(
                              height: 100,
                              width: 75,
                              decoration: BoxDecoration(
                                  color: date2 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.circle,
                                      color: Color(0xff21242C).withOpacity(.8),
                                      size: 12),
                                  SizedBox(height: 10.0),
                                  TextFrave(
                                      text: "Fri",
                                      color: Colors.white,
                                      fontSize: 17),
                                  SizedBox(height: 5.0),
                                  TextFrave(
                                      text: "9",
                                      color: Colors.white,
                                      fontSize: 30),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              DATE = "Sat 10";
                              date1 = false;
                              date2 = false;
                              date3 = true;
                              date4 = false;
                              date5 = false;
                              date6 = false;
                            setState(() {});
                            },
                            child: Container(
                              height: 100,
                              width: 75,
                              decoration: BoxDecoration(
                                  color: date3 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.circle,
                                      color: Color(0xff21242C).withOpacity(.8),
                                      size: 12),
                                  SizedBox(height: 10.0),
                                  TextFrave(
                                      text: "Sat",
                                      color: Colors.white,
                                      fontSize: 17),
                                  SizedBox(height: 5.0),
                                  TextFrave(
                                      text: "10",
                                      color: Colors.white,
                                      fontSize: 30),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              DATE = "Sun 11";
                              date1 = false;
                              date2 = false;
                              date3 = false;
                              date4 = true;
                              date5 = false;
                              date6 = false;
                            setState(() {});
                            },
                            child: Container(
                              height: 100,
                              width: 75,
                              decoration: BoxDecoration(
                                  color: date4 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.circle,
                                      color: Color(0xff21242C).withOpacity(.8),
                                      size: 12),
                                  SizedBox(height: 10.0),
                                  TextFrave(
                                      text: "Sun",
                                      color: Colors.white,
                                      fontSize: 17),
                                  SizedBox(height: 5.0),
                                  TextFrave(
                                      text: "11",
                                      color: Colors.white,
                                      fontSize: 30),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              DATE = "Mon 12";
                              date1 = false;
                              date2 = false;
                              date3 = false;
                              date4 = false;
                              date5 = true;
                              date6 = false;
                            setState(() {});
                            },
                            child: Container(
                              height: 100,
                              width: 75,
                              decoration: BoxDecoration(
                                  color:date5 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.circle,
                                      color: Color(0xff21242C).withOpacity(.8),
                                      size: 12),
                                  SizedBox(height: 10.0),
                                  TextFrave(
                                      text: "Mon",
                                      color: Colors.white,
                                      fontSize: 17),
                                  SizedBox(height: 5.0),
                                  TextFrave(
                                      text: "12",
                                      color: Colors.white,
                                      fontSize: 30),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              DATE = "Tu 13";
                              date1 = false;
                              date2 = false;
                              date3 = false;
                              date4 = false;
                              date5 = false;
                              date6 = true;
                            setState(() {});
                            },
                            child: Container(
                              height: 100,
                              width: 75,
                              decoration: BoxDecoration(
                                  color: date6 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.circle,
                                      color: Color(0xff21242C).withOpacity(.8),
                                      size: 12),
                                  SizedBox(height: 10.0),
                                  TextFrave(
                                      text: "Tu",
                                      color: Colors.white,
                                      fontSize: 17),
                                  SizedBox(height: 5.0),
                                  TextFrave(
                                      text: "13",
                                      color: Colors.white,
                                      fontSize: 30),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20),
                      height: 40,
                      width: size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () {
                              TIME = "11:30 AM";
                              time1 = true;
                              time2 = false;
                              time3 = false;
                              time4 = false;
                              time5 = false;
                              setState(() {});
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 18.0),
                                decoration: BoxDecoration(
                                    color: time1 ? Colors.amber : Color(0xff4A5660),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: TextFrave(
                                    text: "11:30 AM",
                                    color: Colors.white,
                                    fontSize: 16)),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              TIME = "12:50 AM";
                              time1 = false;
                              time2 = true;
                              time3 = false;
                              time4 = false;
                              time5 = false;
                              setState(() {});
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 18.0),
                                decoration: BoxDecoration(
                                    color: time2 ? Colors.amber : Color(0xff4A5660),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: TextFrave(
                                    text: "12:50 AM",
                                    color: Colors.white,
                                    fontSize: 16)),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: (() {
                              TIME = "3:30 PM";
                              time1 = false;
                              time2 = false;
                              time3 = true;
                              time4 = false;
                              time5 = false;
                              setState(() {});
                            }),
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 18.0),
                                decoration: BoxDecoration(
                                    color: time3 ? Colors.amber : Color(0xff4A5660),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: TextFrave(
                                    text: "3:30 PM",
                                    color: Colors.white,
                                    fontSize: 16)),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              TIME = "5:30 PM";
                              time1 = false;
                              time2 = false;
                              time3 = false;
                              time4 = true;
                              time5 = false;
                              setState(() {});
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 18.0),
                                decoration: BoxDecoration(
                                    color: time4 ? Colors.amber : Color(0xff4A5660),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: TextFrave(
                                    text: "5:30 PM",
                                    color: Colors.white,
                                    fontSize: 16)),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                             onTap: () {
                              TIME = "7:30 PM";
                              time1 = false;
                              time2 = false;
                              time3 = false;
                              time4 = false;
                              time5 = true;
                              setState(() {});
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 18.0),
                                decoration: BoxDecoration(
                                    color:time5 ? Colors.amber : Color(0xff4A5660),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: TextFrave(
                                    text: "7:30 PM",
                                    color: Colors.white,
                                    fontSize: 16)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    PainterScreenMovie(),
                    TextFrave(
                        text: 'Screen',
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    SizedBox(height: 40.0),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            chair1 = !chair1;
                            if (count >= 0 && chair1 == true){
                              count ++;
                              a.add("A1");
                            }
                            else if (count > 0 && chair1 == false){
                              count--;
                              a.remove("A1");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair1 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "A1", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            chair2 = !chair2;
                            if (count >= 0 && chair2 == true){
                              count ++;
                              a.add("A2");
                            }
                            else if (count > 0 && chair2 == false){
                              count--;
                              a.remove("A2");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair2 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "A2", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 30),
                        GestureDetector(
                           onTap: () {
                            chair3 = !chair3;
                            if (count >= 0 && chair3 == true){
                              count ++;
                              a.add("A3");
                            }
                            else if (count > 0 && chair3 == false){
                              count--;
                              a.remove("A3");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair3 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "A3", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            chair4 = !chair4;
                            if (count >= 0 && chair4 == true){
                              count ++;
                              a.add("A4");
                            }
                            else if (count > 0 && chair4 == false){
                              count--;
                              a.remove("A4");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color:chair4 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "A4", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            chair5 = !chair5;
                            if (count >= 0 && chair5 == true){
                              count ++;
                              a.add("A5");
                            }
                            else if (count > 0 && chair5 == false){
                              count--;
                              a.remove("A5");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair5 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "A5", color: Colors.white, fontSize: 16)),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            chair6 = !chair6;
                            if (count >= 0 && chair6 == true){
                              count ++;
                              a.add("B1");
                            }
                            else if (count > 0 && chair6 == false){
                              count--;
                              a.remove("B1");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair6 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "B1", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            chair7 = !chair7;
                            if (count >= 0 && chair7 == true){
                              count ++;
                               a.add("B1");
                            }
                            else if (count > 0 && chair7 == false){
                              count--;
                              a.remove("B2");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair7 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "B2", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 30),
                        GestureDetector(
                           onTap: () {
                            chair8 = !chair8;
                            if (count >= 0 && chair8 == true){
                              count ++;
                               a.add("B3");
                            }
                            else if (count > 0 && chair8 == false){
                              count--;
                              a.remove("B3");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair8 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "B3", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            chair9 = !chair9;
                            if (count >= 0 && chair9 == true){
                              count ++;
                               a.add("B4");
                            }
                            else if (count > 0 && chair9 == false){
                              count--;
                              a.remove("B4");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color:chair9 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "B4", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            chair10 = !chair10;
                            if (count >= 0 && chair10 == true){
                              count ++;
                               a.add("B5");
                            }
                            else if (count > 0 && chair10 == false){
                              count--;
                              a.remove("B5");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair10 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "B5", color: Colors.white, fontSize: 16)),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            chair11 = !chair11;
                            if (count >= 0 && chair11 == true){
                              count ++;
                              a.add("C1");
                            }
                            else if (count > 0 && chair11 == false){
                              count--;
                              a.remove("C1");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair11 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "C1", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            chair12 = !chair12;
                            if (count >= 0 && chair12 == true){
                              count ++;
                               a.add("C2");
                            }
                            else if (count > 0 && chair12 == false){
                              count--;
                              a.remove("C2");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair12 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "C2", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 30),
                        GestureDetector(
                           onTap: () {
                            chair13 = !chair13;
                            if (count >= 0 && chair13 == true){
                              count ++;
                               a.add("C3");
                            }
                            else if (count > 0 && chair13 == false){
                              count--;
                              a.remove("C3");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair13 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "C3", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            chair14 = !chair14;
                            if (count >= 0 && chair14 == true){
                              count ++;
                               a.add("C4");
                            }
                            else if (count > 0 && chair14 == false){
                              count--;
                              a.remove("C4");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color:chair14 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "C4", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            chair15 = !chair15;
                            if (count >= 0 && chair15 == true){
                              count ++;
                               a.add("C5");
                            }
                            else if (count > 0 && chair15 == false){
                              count--;
                              a.remove("C5");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 60,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair15 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "C5", color: Colors.white, fontSize: 16)),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            chair16 = !chair16;
                            if (count >= 0 && chair16 == true){
                              count ++;
                              a.add("D1");
                            }
                            else if (count > 0 && chair16 == false){
                              count--;
                              a.remove("D1");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 110,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair16 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "D1", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            chair17 = !chair17;
                            if (count >= 0 && chair17 == true){
                              count ++;
                              a.add("D2");
                            }
                            else if (count > 0 && chair17 == false){
                              count--;
                              a.remove("D2");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 110,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair17 ? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "D2", color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            chair18 = !chair18;
                            if (count >= 0 && chair18 == true){
                              count ++;
                              a.add("D3");
                            }
                            else if (count > 0 && chair18 == false){
                              count--;
                              a.remove("D3");
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: 40,
                              width: 110,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.symmetric(horizontal: 18.0),
                              decoration: BoxDecoration(
                                  color: chair18? Colors.amber : Color(0xff4A5660),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFrave(
                                  text: "D3", color: Colors.white, fontSize: 16)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    _ItemsDescription(size: size)
                  ],
                ),
              )),
          Positioned(
            left: 60,
            right: 60,
            bottom: 20,
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsPaymentScreen(titleMovie: widget.titleMovie, imageMovie: widget.imageMovie, date: DATE, ticket : count.toString(), time: TIME, a: a))),
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8.0)),
                child: TextFrave(
                    text: 'Buy Ticket \$ 55.0', fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemsDescription extends StatelessWidget {
  const _ItemsDescription({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(Icons.circle, color:Color(0xff4A5660) , size: 10),
              SizedBox(width: 10.0),
              TextFrave(text: 'Free', fontSize: 20, color:Color(0xff4A5660) )
            ],
          ),
          Row(
            children: [
              Icon(Icons.circle, color: Colors.amber, size: 10),
              SizedBox(width: 10.0),
              TextFrave(text: 'Selected', fontSize: 20, color: Colors.amber)
            ],
          ),
        ],
      ),
    );
  }
}
