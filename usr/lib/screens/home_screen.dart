import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('कर्जा असुली न्यायाधिकरण'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("अतिथि प्रयोगकर्ता"),
              accountEmail: Text("स्वागत छ"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.account_balance, size: 40, color: Color(0xFF0D47A1)),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF0D47A1),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('गृहपृष्ठ'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.list_alt),
              title: const Text('दैनिक पेशी सूची'),
              onTap: () => Navigator.pushNamed(context, '/cause-list'),
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('मुद्दाको स्थिति'),
              onTap: () => Navigator.pushNamed(context, '/case-status'),
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('सूचना तथा जानकारी'),
              onTap: () => Navigator.pushNamed(context, '/notices'),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('हाम्रो बारेमा'),
              onTap: () => Navigator.pushNamed(context, '/about'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Banner Area
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const Icon(Icons.account_balance, size: 64, color: Color(0xFF0D47A1)),
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
                  Text(
                    'Debt Recovery Tribunal',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.grey[700],
                        ),
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'मुख्य सेवाहरू',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),

            // Grid Menu
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.1,
                children: [
                  _buildMenuCard(
                    context,
                    'दैनिक पेशी सूची',
                    Icons.calendar_today,
                    Colors.blue,
                    '/cause-list',
                  ),
                  _buildMenuCard(
                    context,
                    'मुद्दाको स्थिति',
                    Icons.search,
                    Colors.green,
                    '/case-status',
                  ),
                  _buildMenuCard(
                    context,
                    'सूचना तथा जानकारी',
                    Icons.notifications_active,
                    Colors.orange,
                    '/notices',
                  ),
                  _buildMenuCard(
                    context,
                    'हाम्रो बारेमा',
                    Icons.info_outline,
                    Colors.purple,
                    '/about',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Recent Notice Section (Placeholder)
            Card(
              margin: const EdgeInsets.all(16),
              child: ListTile(
                leading: const Icon(Icons.new_releases, color: Colors.red),
                title: const Text('भर्खरको सूचना'),
                subtitle: const Text('नयाँ पेशी सूची प्रकाशित गरिएको छ। कृपया हेर्नुहोला।'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () => Navigator.pushNamed(context, '/notices'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, IconData icon, Color color, String route) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: color.withOpacity(0.1),
              child: Icon(icon, size: 32, color: color),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
