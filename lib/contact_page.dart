import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  bool isSubmitted = false;
  bool isLoading = false;

  Future<void> sendMessage() async {
    setState(() => isLoading = true);

    final url = Uri.parse("https://formspree.io/f/xqewkrvo");

    try {
      await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "firstName": firstNameController.text,
          "lastName": lastNameController.text,
          "email": emailController.text,
          "message": messageController.text,
        }),
      );

      setState(() {
        isLoading = false;
        isSubmitted = true;
      });

      firstNameController.clear();
      lastNameController.clear();
      emailController.clear();
      messageController.clear();
    } catch (e) {
      setState(() => isLoading = false);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Failed to send message. Please try again."),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: isSubmitted ? _buildSuccessMessage() : _buildForm(),
          ),
        ),
      ),
    );
  }

  // ================= SUCCESS SCREEN =================
  Widget _buildSuccessMessage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.check_circle, size: 90, color: Colors.green),

        const SizedBox(height: 20),

        const Text(
          "Thank you for your inquiry!",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 67, fontFamily: 'Calligraphy'),
        ),

        const SizedBox(height: 12),

        const Text(
          "We truly appreciate you reaching out to us.\n"
          "Our team will review your message and respond within 24–48 hours.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),

        const SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔁 SUBMIT AGAIN
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isSubmitted = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6B4F3A),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
              ),
              child: const Text(
                "Submit Another",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(width: 16),

            // 🏠 BACK TO HOME
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
                side: const BorderSide(color: Color(0xFF6B4F3A)),
              ),
              child: const Text(
                "Back to Home",
                style: TextStyle(color: Color(0xFF6B4F3A)),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // ================= FORM UI =================
  Widget _buildForm() {
    return Column(
      children: [
        const Text(
          "Let's Create Together",
          style: TextStyle(
            fontSize: 68,
            fontFamily: 'Calligraphy',
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
                controller: firstNameController,
                decoration: const InputDecoration(
                  labelText: "First Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: TextField(
                controller: lastNameController,
                decoration: const InputDecoration(
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
          controller: emailController,
          decoration: const InputDecoration(
            labelText: "Email Address",
            border: OutlineInputBorder(),
          ),
        ),

        const SizedBox(height: 20),

        // MESSAGE
        TextField(
          controller: messageController,
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
            onPressed: isLoading ? null : sendMessage,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: const Color(0xFF6B4F3A),
            ),
            child: isLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : const Text(
                    "Send Message",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }
}
