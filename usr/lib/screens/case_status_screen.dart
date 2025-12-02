import 'package:flutter/material.dart';

class CaseStatusScreen extends StatefulWidget {
  const CaseStatusScreen({super.key});

  @override
  State<CaseStatusScreen> createState() => _CaseStatusScreenState();
}

class _CaseStatusScreenState extends State<CaseStatusScreen> {
  final _formKey = GlobalKey<FormState>();
  final _caseNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('मुद्दाको स्थिति'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'मुद्दा खोज्नुहोस्',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _caseNumberController,
                        decoration: const InputDecoration(
                          labelText: 'मुद्दा नम्बर',
                          hintText: 'उदाहरण: ०७८-WB-००१२',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.search),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'कृपया मुद्दा नम्बर राख्नुहोस्';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Mock search action
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('खोजी गरिदैछ...')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: const Text('खोज्नुहोस्'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Placeholder for results
            const Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.folder_open, size: 64, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      'यहाँ खोज नतिजा देखाइनेछ',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
