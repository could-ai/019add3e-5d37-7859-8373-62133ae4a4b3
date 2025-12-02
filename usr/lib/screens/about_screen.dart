import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('हाम्रो बारेमा'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const Icon(Icons.account_balance, size: 80, color: Color(0xFF0D47A1)),
                  const SizedBox(height: 16),
                  Text(
                    'कर्जा असुली न्यायाधिकरण',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0D47A1),
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'काठमाडौँ, नेपाल',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'परिचय',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            const Text(
              'बैंक तथा वित्तीय संस्थाहरुको खराब कर्जा असुलीलाई छिटो, छरितो र प्रभावकारी बनाउन स्थापना गरिएको न्यायिक निकाय हो। यसले बैंक तथा वित्तीय संस्थाहरुले लगानी गरेको कर्जा समयमा असुल नभएमा कानुनी प्रक्रियाद्वारा असुल उपर गर्न सहयोग पुर्‍याउँछ।',
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            const Text(
              'सम्पर्क विवरण',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.location_on, color: Colors.red),
              title: const Text('ठेगाना'),
              subtitle: const Text('अनामनगर, काठमाडौँ'),
              contentPadding: EdgeInsets.zero,
            ),
            ListTile(
              leading: const Icon(Icons.phone, color: Colors.green),
              title: const Text('फोन'),
              subtitle: const Text('०१-४XXXXXX'),
              contentPadding: EdgeInsets.zero,
            ),
            ListTile(
              leading: const Icon(Icons.email, color: Colors.blue),
              title: const Text('इमेल'),
              subtitle: const Text('info@drt.gov.np'),
              contentPadding: EdgeInsets.zero,
            ),
          ],
        ),
      ),
    );
  }
}
