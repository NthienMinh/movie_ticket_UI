import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_ticket_app/models/movie_model.dart';
import 'package:movie_ticket_app/models/trailer_model.dart';
import 'package:movie_ticket_app/screens/details_movie_screen.dart';
import 'package:movie_ticket_app/widgets/bigtext.dart';
import 'package:movie_ticket_app/widgets/textFrave.dart';


class HomeCineScreen extends StatelessWidget {
  const HomeCineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff21242C),
        appBar: AppBar(
          backgroundColor: Color(0xff21242C),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Colors.white, size: 30),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.search, size: 30),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
            SizedBox(width: 10.0),
            IconButton(
              icon: const Icon(Icons.notifications_rounded, size: 30),
              tooltip: 'Open notifications',
              onPressed: () {
                // handle the press
                
              },
            ),
            SizedBox(width: 15.0),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color(0xff21242C),
          child: ListView(
            padding: EdgeInsets.zero,
          children: [
            Container(              
              width: double.maxFinite,
              height: 100,  
              color: Color(0xff21242C),           
              child: Padding(
                padding: EdgeInsets.only(
                  left: 75,
                  top: 40

                ),
                child: BigText(text: "Amazing Cinema", color: Colors.white,),
              ),
            ), 
            Divider(
              color: Colors.white
            ),
            Row(
              children: [
                SizedBox(width:15),
                IconButton(
                  icon: const Icon(Icons.home, size: 30, color: Colors.white,),                 
                  onPressed: () {
                    // handle the press
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width:10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: BigText(
                    text: "Trang chủ",
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.white
            ),
            Row(
              children: [
                SizedBox(width:15),
                IconButton(
                  icon: const Icon(Icons.calendar_month, size: 30, color: Colors.white,),
                  onPressed: () {
                    // handle the press
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width:10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: BigText(
                    text: "Lịch chiếu",
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.white
            ),
            Row(
              children: [
                SizedBox(width:15),
                IconButton(
                  icon: const Icon(Icons.store, size: 30, color: Colors.white,),
                  onPressed: () {
                    // handle the press
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width:10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: BigText(
                    text: "Cửa hàng",
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.white
            ),
            Row(
              children: [
                SizedBox(width:15),
                IconButton(
                  icon: const Icon(Icons.media_bluetooth_on, size: 30, color: Colors.white,),
                  onPressed: () {
                    // handle the press
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width:10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: BigText(
                    text: "Media",
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.white
            ),
            Row(
              children: [
                SizedBox(width:15),
                IconButton(
                  icon: const Icon(Icons.airplane_ticket,size: 30, color: Colors.white,),
                  onPressed: () {
                    // handle the press
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width:10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: BigText(
                    text: "Khuyến mãi",
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.white
            ),
            Row(
              children: [
                SizedBox(width:15),
                IconButton(
                  icon: const Icon(Icons.person, size: 30, color: Colors.white,),
                  onPressed: () {
                    // handle the press
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width:10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: BigText(
                    text: "Thông tin của bạn",
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.white
            ),
            Row(
              children: [
                SizedBox(width:15),
                IconButton(
                  icon: const Icon(Icons.recent_actors_outlined, size: 30, color: Colors.white,),
                  onPressed: () {
                    // handle the press
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width:10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: BigText(
                    text: "Tuyển dụng",
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.white
            ),
            SizedBox(height: 100),
            BigText(text: "  @Ứng dụng được phát triển bởi D&T", color: Colors.white, size: 18,)
          ],
          ),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 10.0),
          children: [
            _ItemTitle(title: 'Trailes'),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              height: 200,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: TrailersMovie.listTrailers.length,
                  itemBuilder: (context, i) =>
                      _ItemTrailers(trailers: TrailersMovie.listTrailers[i])),
            ),
            SizedBox(height: 20.0),
            _ItemTitle(title: 'Now in Cinemas'),
            Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 280,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: MovieModel.listMovie.length,
              itemBuilder: (context, i) =>
                  _ItemsNowCinemas(movieModel: MovieModel.listMovie[i]),
            ),
          ),
          SizedBox(height: 20.0),
          _ItemTitle(title: 'Coming Soon'),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 280,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, i) =>
                  _ItemsSoonMovie(movieModel: MovieModel.listMovie[i + 2]),
            ),
          ),
          ]),
      )
    );
  }
}

class _ItemsNowCinemas extends StatelessWidget {
  final MovieModel movieModel;

  const _ItemsNowCinemas({Key? key, required this.movieModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => DetailsMovieScreen(movieModel: movieModel))),
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'movie-hero-${movieModel.id}',
              child: Container(
                height: 210,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(movieModel.image))),
              ),
            ),
            SizedBox(height: 15.0),
            SizedBox(
              width: 160,
              child: TextFrave(text: movieModel.name, color: Colors.white),
            ),
            SizedBox(height: 5.0),
            RatingBar.builder(
                itemSize: 22,
                initialRating: movieModel.qualification,
                itemBuilder: (_, i) =>
                    Icon(Icons.star_rate_rounded, color: Colors.amber),
                onRatingUpdate: (_) {})
          ],
        ),
      ),
    );
  }
}
class _ItemsSoonMovie extends StatelessWidget {
  final MovieModel movieModel;

  const _ItemsSoonMovie({Key? key, required this.movieModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 210,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(movieModel.image))),
            ),
            SizedBox(height: 15.0),
            SizedBox(
              width: 160,
              child: TextFrave(text: movieModel.name, color: Colors.white),
            ),
            SizedBox(height: 5.0),
            RatingBar.builder(
                itemSize: 22,
                initialRating: movieModel.qualification,
                itemBuilder: (_, i) =>
                    Icon(Icons.star_rate_rounded, color: Colors.amber),
                onRatingUpdate: (_) {})
          ],
        ),
      ),
    );
  }
}
class _ItemTitle extends StatelessWidget {
  final String title;

  const _ItemTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFrave(
                text: title,
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500),
            TextFrave(text: 'View all', color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
class _ItemTrailers extends StatelessWidget {
  final TrailersMovie trailers;

  const _ItemTrailers({Key? key, required this.trailers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Stack(
        children: [
          Container(
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(trailers.image))),
          ),
          Container(
            width: 300,
            child: Center(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0,
                ),
                child: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.white.withOpacity(0.3),
                    child: Icon(Icons.play_arrow_rounded,
                        color: Colors.white, size: 45)),
              ),
            )),
          )
        ],
      ),
    );
  }
}