import 'package:flutter/material.dart';

class GenresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'GENRES',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1DB954),
              Color(0xFF121212),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.3,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            children: [
              GenreCard(
                title: 'Pop',
                imageUrl:
                    'https://i.imgur.com/LsJ9A1y_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'Hip Hop',
                imageUrl:
                    'https://i.imgur.com/LsJ9A1y_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'Electronic',
                imageUrl:
                    'https://i.imgur.com/XdUTTW5_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'Rock',
                imageUrl:
                    'https://i.imgur.com/YTtGSZJ_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'R&B',
                imageUrl:
                    'https://images-na.ssl-images-amazon.com/images/I/9178-Ff7hGL._AC_SX679_.jpg',
              ),
              GenreCard(
                title: 'Country',
                imageUrl:
                    'https://images-na.ssl-images-amazon.com/images/I/71x8%2Bsn000L._SL1500_.jpg',
              ),
              GenreCard(
                title: 'Pop',
                imageUrl:
                    'https://i.imgur.com/LsJ9A1y_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'Hip Hop',
                imageUrl:
                    'https://i.imgur.com/LsJ9A1y_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'Electronic',
                imageUrl:
                    'https://i.imgur.com/XdUTTW5_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'Rock',
                imageUrl:
                    'https://i.imgur.com/YTtGSZJ_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'R&B',
                imageUrl:
                    'https://images-na.ssl-images-amazon.com/images/I/9178-Ff7hGL._AC_SX679_.jpg',
              ),
              GenreCard(
                title: 'Country',
                imageUrl:
                    'https://images-na.ssl-images-amazon.com/images/I/71x8%2Bsn000L._SL1500_.jpg',
              ),
              GenreCard(
                title: 'Country',
                imageUrl:
                    'https://images-na.ssl-images-amazon.com/images/I/71x8%2Bsn000L._SL1500_.jpg',
              ),
              GenreCard(
                title: 'Pop',
                imageUrl:
                    'https://i.imgur.com/LsJ9A1y_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'Hip Hop',
                imageUrl:
                    'https://i.imgur.com/LsJ9A1y_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'Electronic',
                imageUrl:
                    'https://i.imgur.com/XdUTTW5_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'Rock',
                imageUrl:
                    'https://i.imgur.com/YTtGSZJ_d.webp?maxwidth=520&shape=thumb&fidelity=high',
              ),
              GenreCard(
                title: 'R&B',
                imageUrl:
                    'https://images-na.ssl-images-amazon.com/images/I/9178-Ff7hGL._AC_SX679_.jpg',
              ),
              GenreCard(
                title: 'Country',
                imageUrl:
                    'https://images-na.ssl-images-amazon.com/images/I/71x8%2Bsn000L._SL1500_.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenreCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  GenreCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to genre page
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
              letterSpacing: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
