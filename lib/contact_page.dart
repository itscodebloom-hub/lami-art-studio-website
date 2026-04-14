import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                const Text(
                  "Let's Create Together",
                  style: TextStyle(
                    fontSize: 68,
                    fontFamily: 'Calligraphy', // 👈 IMPORTANT
                    fontWeight: FontWeight.normal,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "We’d love to hear from you. Send us your order request below.",
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 40),

                // FIRST NAME + LAST NAME
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "First Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),

                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Last Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // EMAIL
                TextField(
                  decoration: const InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 20),

                // MESSAGE (MULTI-LINE)
                TextField(
                  maxLines: 6,
                  decoration: const InputDecoration(
                    labelText: "Message",
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 30),

                // SUBMIT BUTTON
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // later we connect backend here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: const Color(0xFF6B4F3A),
                    ),
                    child: const Text(
                      "Send Message",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
