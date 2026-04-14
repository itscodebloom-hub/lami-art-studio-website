import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:html' as html;
import 'package:flutter_animate/flutter_animate.dart';

class Artwork {
  final String image;
  final String title;
  final String description;
  final bool available;
  final String link;

  Artwork({
    required this.image,
    required this.title,
    required this.description,
    required this.available,
    required this.link,
  });
}

class GalleryPage extends StatelessWidget {
  final List<Artwork> artworks = [
    Artwork(
      image: "assets/images/img1.jpg",
      title: "Heavenly Jerusalem",
      description:
          "Painting of buildings in heavenly Jerusalem in Icon painting style. 24karat gold with hand made pigments and egg tempera.",
      available: true,
      link: "https://square.link/art1",
    ),
    Artwork(
      image: "assets/images/img2.JPG",
      title: "Haruf Sudani",
      description:
          "Arabic alphabets in Sudani script om ahar paper. (Insert link to MFA Boston catalogue)",
      available: false,
      link: "/contact",
    ),
    Artwork(
      image: "assets/images/img3.JPG",
      title: "Starburst tiles",
      description: "Geometric pattern on handmade ceramic tiles with overglaze",
      available: false,
      link: "/contact",
    ),
    Artwork(
      image: "assets/images/img4.jpg",
      title: "Two little birds",
      description:
          "Deccan style Indian miniature painting. Handmade pigments on vashli paper",
      available: true,
      link: "https://square.link/art1",
    ),
    Artwork(
      image: "assets/images/img5.JPG",
      title: "Regal Horse",
      description:
          "Persian miniature painting of royal horse. Platinum, gold and handmade pigments on sized and stained watercolour paper.",
      available: true,
      link: "https://square.link/art1",
    ),
    Artwork(
      image: "assets/images/img6.jpg",
      title: "Allah",
      description: "Sudani calligraphy script. Black in on ahar paper.",
      available: true,
      link: "https://square.link/art1",
    ),
    Artwork(
      image: "assets/images/img7.jpg",
      title: "Salatul Fatih",
      description: "Spiral salatul fatih in Sudani script.",
      available: true,
      link: "https://square.link/art1",
    ),
    Artwork(
      image: "assets/images/img8.JPG",
      title: "Poetry",
      description: " ",
      available: false,
      link: "/contact",
    ),
    Artwork(
      image: "assets/images/img9.JPG",
      title: "Surah Fatiha on Paper",
      description:
          "Opening chapter of the Qur’an in Sudan script on stained watercolour paper with handmade pigments (Insert link to MFA Boston )",
      available: true,
      link: "https://square.link/art1",
    ),
    Artwork(
      image: "assets/images/img10.JPG",
      title: "Salatul Fatih on paper",
      description:
          "Salawat on stained handmade paper in Sudan script with handmade pigments.",
      available: true,
      link: "https://square.link/art1",
    ),
    Artwork(
      image: "assets/images/img11.JPG",
      title: "Calabash design on stained paper",
      description: "Design on glass.",
      available: false,
      link: "/contact",
    ),
    Artwork(
      image: "assets/images/img12.JPG",
      title: "Golden Quran cover on Gesso panel",
      description: "West African Quran cover etched in gilded gesso board.",
      available: false,
      link: "/contact",
    ),
    Artwork(
      image: "assets/images/img13.jpg",
      title: "Glory!",
      description: "Kufic on ceramic plate",
      available: false,
      link: "/contact",
    ),
    Artwork(
      image: "assets/images/img14.jpg",
      title: "Moroccan 8 pointed stars",
      description:
          "8 point rosette painted with handmade paints on handmade paper",
      available: true,
      link: "https://square.link/art1",
    ),
    Artwork(
      image: "assets/images/img15.JPG",
      title: "Remember us",
      description:
          "Commissioned gift, collection of prayers, Hadith and chapter of the Quran. Riqa’a script on paper on indigo paper",
      available: false,
      link: "/contact",
    ),
    // Artwork(
    //   image: "assets/images/img2.JPG",
    //   title: "Haruf Sudani",
    //   description: "Arabic alphabets in Sudani script om ahar paper. (Insert link to MFA Boston catalogue)",
    //   available: false,
    //   link: "/contact",
    // ),
  ];

  GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: MasonryGridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          itemCount: artworks.length,
          itemBuilder: (context, index) {
            final art = artworks[index];

            return GestureDetector(
              onTap: () => _showArtDialog(context, art),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(art.image, fit: BoxFit.cover)
                    .animate(delay: (index * 100).ms)
                    .fade(duration: 500.ms)
                    .slideY(begin: 0.2),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showArtDialog(BuildContext context, Artwork art) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            width: 800,
            height: 500,
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                // LEFT IMAGE
                Expanded(child: Image.asset(art.image, fit: BoxFit.cover)),

                const SizedBox(width: 20),

                // RIGHT DETAILS
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        art.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(art.description),

                      const SizedBox(height: 20),

                      Text(
                        art.available ? "Available" : "Sold Out",
                        style: TextStyle(
                          color: art.available ? Colors.green : Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const Spacer(),

                      ElevatedButton(
                        onPressed: () {
                          if (art.available) {
                            html.window.open(art.link, "_blank");
                          } else {
                            Navigator.pushNamed(context, "/contact");
                          }
                        },
                        child: const Text("Order Now"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
