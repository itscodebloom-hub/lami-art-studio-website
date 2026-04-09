import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Center(
              // 🔥 centers whole website
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 1200,
                ), // 🔥 website width
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 60, // 🔥 better top/bottom spacing
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          bool isWide = constraints.maxWidth > 800;

                          return isWide
                              ? Row(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // 🔥 better alignment
                                  children: [
                                    // Left: text
                                    Expanded(
                                      flex: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  color: Color.fromARGB(
                                                    255,
                                                    65,
                                                    4,
                                                    0,
                                                  ),
                                                  height: 1.6,
                                                ),
                                                children: [
                                                  const TextSpan(
                                                    text:
                                                        'Welcome to Lami Art Studio. Our work here is about exploring West Africa Islamic Art, Islamic Arts, Arabic and English Calligraphy and how it all comes together.\n\n',
                                                  ),

                                                  // Calligraphy quote
                                                  WidgetSpan(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 10,
                                                          ),
                                                      child: Center(
                                                        child: Text(
                                                          '“at first practice on a wooden slate board”',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: const TextStyle(
                                                            fontFamily:
                                                                'Calligraphy',
                                                            fontSize: 46,
                                                            color:
                                                                Color.fromARGB(
                                                                  255,
                                                                  65,
                                                                  4,
                                                                  0,
                                                                ),
                                                            height: 1.8,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  // Author
                                                  WidgetSpan(
                                                    child: Center(
                                                      child: Text(
                                                        'by Ibn Bawwab translation by M Zakariyah\n\n',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: const TextStyle(
                                                          fontSize: 18,
                                                          color: Color.fromARGB(
                                                            255,
                                                            65,
                                                            4,
                                                            0,
                                                          ),
                                                          height: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  const TextSpan(
                                                    text:
                                                        'Our vision is to craft stories and connections through Islamic arts. It is all about building connections with all these elements expressed through our art pieces, check out our gallery and shop, worksheets (coming soon) and research (blog coming soon).\n\n'
                                                        'Let’s tell a story together and let’s discover a world of Arabic calligraphy, West Africa and Islamic art.\n\n',
                                                  ),
                                                ],
                                              ),
                                            ),

                                            const SizedBox(height: 30),

                                            // Signature
                                            Image.asset(
                                              'assets/images/signature.png',
                                              height: 80,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    const SizedBox(width: 40),

                                    // Right: image
                                    Expanded(
                                      flex: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 0,
                                        ), // 🔥 better alignment
                                        child: Container(
                                          constraints: const BoxConstraints(
                                            maxHeight: 750,
                                          ),
                                          child: Image.asset(
                                            'assets/images/home_image1.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(255, 65, 4, 0),
                                          height: 1.5,
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                'Welcome to Lami Art Studio. Our work here is about exploring West Africa Islamic Art, Islamic Arts, Arabic and English Calligraphy and how it all comes together.\n\n',
                                          ),
                                        ],
                                      ),
                                    ),

                                    const SizedBox(height: 20),

                                    Image.asset(
                                      'assets/images/home_image1.png',
                                      height: 300,
                                    ),

                                    const SizedBox(height: 20),

                                    Image.asset(
                                      'assets/images/signature.png',
                                      height: 80,
                                    ),
                                  ],
                                );
                        },
                      ),

                      // 🔥 ELEGANT DIVIDER SECTION
                      const SizedBox(height: 80),

                      Center(
                        child: Container(
                          width: 120,
                          height: 2,
                          color: const Color(0xFF8C6A3B), // gold accent
                        ),
                      ),

                      // ===== ABOUT (HALIMA) SECTION =====
                      const SizedBox(height: 80),

                      LayoutBuilder(
                        builder: (context, constraints) {
                          bool isWide = constraints.maxWidth > 800;

                          return isWide
                              ? Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // LEFT IMAGE (opposite layout)
                                    Expanded(
                                      flex: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          right: 40,
                                        ),
                                        child: Image.asset(
                                          'assets/images/halima.png', // replace with your client image
                                          height: 400,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),

                                    // RIGHT TEXT
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Title
                                          const Text(
                                            "Hi I’m Halima!",
                                            style: TextStyle(
                                              fontFamily:
                                                  'Calligraphy', // 🔥 your custom font
                                              fontSize: 82, // bigger for impact
                                              color: Color.fromARGB(
                                                255,
                                                65,
                                                4,
                                                0,
                                              ),
                                              height: 1.3,
                                            ),
                                          ),

                                          const SizedBox(height: 10),

                                          // // Accent line
                                          // Container(
                                          //   width: 80,
                                          //   height: 2,
                                          //   color: Color(0xFF8C6A3B),
                                          // ),
                                          const SizedBox(height: 20),

                                          // Paragraph
                                          const Text(
                                            "Working predominantly with wood and clay, Halima has used these materials to interpret the language of patterns and calligraphy found in West African Islamic art and craft. Halima Bashir was born and raised in Nigeria, takes influences from the Arabic calligraphy script predominant in West Africa called Sudani and patterns from craftwork in northern Nigeria.\n\n"
                                            "Having studied architecture in Nigeria and North Cyprus, she has taken her interest in traditional architecture to her art and craft work. Halima is currently working towards her ijaza (certificate) in Arabic calligraphy with a master calligrapher.",
                                            style: TextStyle(
                                              fontSize: 18,
                                              height: 1.6,
                                              color: Color.fromARGB(
                                                255,
                                                65,
                                                4,
                                                0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Hi I’m Halima!",
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 65, 4, 0),
                                      ),
                                    ),

                                    const SizedBox(height: 10),

                                    Container(
                                      width: 80,
                                      height: 2,
                                      color: Color(0xFF8C6A3B),
                                    ),

                                    const SizedBox(height: 20),

                                    Image.asset(
                                      'assets/images/halima.png',
                                      height: 280,
                                    ),

                                    const SizedBox(height: 20),

                                    const Text(
                                      "Working predominantly with wood and clay, Halima has used these materials...",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 18,
                                        height: 1.6,
                                        color: Color.fromARGB(255, 65, 4, 0),
                                      ),
                                    ),
                                  ],
                                );
                        },
                      ),

                      const SizedBox(height: 110),

                      // ===== NEWSLETTER SECTION =====
                      const SizedBox(height: 100),

                      Center(
                        child: Column(
                          children: [
                            // Title
                            const Text(
                              "Stay Connected",
                              style: TextStyle(
                                fontSize: 72,
                                fontFamily: 'Calligraphy', // 🔥 keep branding
                                color: Color.fromARGB(255, 65, 4, 0),
                              ),
                            ),

                            const SizedBox(height: 10),

                            // Accent line
                            Container(
                              width: 80,
                              height: 2,
                              color: Color(0xFF8C6A3B),
                            ),

                            const SizedBox(height: 20),

                            // Description
                            const Text(
                              "Subscribe to receive updates on new artworks, collections, and stories.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 65, 4, 0),
                              ),
                            ),

                            const SizedBox(height: 30),

                            // Input + Button
                            LayoutBuilder(
                              builder: (context, constraints) {
                                bool isWide = constraints.maxWidth > 600;

                                return isWide
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // Email Field
                                          SizedBox(
                                            width: 300,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: "Enter your email",
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 16,
                                                      vertical: 14,
                                                    ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                            ),
                                          ),

                                          const SizedBox(width: 10),

                                          // Button
                                          ElevatedButton(
                                            onPressed: () {
                                              // 🔥 leave empty for now
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: const Color(
                                                0xFF8C6A3B,
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 24,
                                                    vertical: 16,
                                                  ),
                                            ),
                                            child: const Text(
                                              "Subscribe",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : Column(
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: "Enter your email",
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 16,
                                                      vertical: 14,
                                                    ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                            ),
                                          ),

                                          const SizedBox(height: 10),

                                          SizedBox(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: const Color(
                                                  0xFF8C6A3B,
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      vertical: 16,
                                                    ),
                                              ),
                                              child: const Text(
                                                "Subscribe",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                              },
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
