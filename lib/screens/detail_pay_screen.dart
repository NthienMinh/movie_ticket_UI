import 'package:flutter/material.dart';
import 'package:movie_ticket_app/widgets/textFrave.dart';



class DetailsPaymentScreen extends StatefulWidget {
  final String titleMovie;
  final String imageMovie;
  final String date;
  final String ticket;
  final String time;
  final List a;
  


  const DetailsPaymentScreen(
      {Key? key, required this.titleMovie, required this.imageMovie, required this.date, required this.ticket, required this.time, required this.a})
      : super(key: key);

  @override
  State<DetailsPaymentScreen> createState() => _DetailsPaymentScreenState();
}

class _DetailsPaymentScreenState extends State<DetailsPaymentScreen> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    

    return Scaffold(
      backgroundColor: Color(0xff21242C),
      body: SafeArea(
        child: Stack(
          children: [
            
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [

                    Container(
                      height: size.height * .45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.imageMovie)
                        )
                      ),
                    ),

                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              TextFrave(text: 'DATE', color: Colors.grey, fontSize: 16),
                              TextFrave(text: widget.date),
                            ],
                          ),
                          Column(
                            children: [
                              TextFrave(text: 'TICKETS', color: Colors.grey, fontSize: 16),
                              TextFrave(text: widget.ticket),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              TextFrave(text: 'TIME', color: Colors.grey, fontSize: 16),
                              TextFrave(text: widget.time),
                            ],
                          ),
                          Column(
                            children: [
                              TextFrave(text: 'SEATS', color: Colors.grey, fontSize: 16),
                              Row(
                                children: List.generate(widget.a.length, (i){
                                  return TextFrave(text: widget.a[i] + " ");

                                }),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(31, (index) => TextFrave(text: '- ', color: Colors.grey)),
                    ),
                    SizedBox(height: 10.0),
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                        image: AssetImage("assets/cinema/QR.png"),
                      ),
                    )
                    
                  ],
                ),
              ),
            ),

            Positioned(
              top: size.height * .695,
              left: 15,
              child: Icon(Icons.circle, color: Color(0xff21242C))
            ),

            Positioned(
              top: size.height * .695,
              right: 15,
              child: Icon(Icons.circle, color: Color(0xff21242C))
            ),
      
          ],
        ),
      ),
    );
  }
}