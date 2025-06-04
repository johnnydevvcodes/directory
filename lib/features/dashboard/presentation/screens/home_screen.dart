import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                _MyDirectoryCard(),
                SizedBox(height: 40),
                _TransactionFrame(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MyDirectoryCard extends StatelessWidget {
  const _MyDirectoryCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Directory',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: const [
              Expanded(
                  child: _DirectoryItem(
                      icon: Icons.park,
                      color: Color(0xFF2E7D5A),
                      label: 'Plantations',
                      count: 0)),
              VerticalDivider(thickness: 1, color: Color(0xFFE0E0E0)),
              Expanded(
                  child: _DirectoryItem(
                      icon: Icons.location_on,
                      color: Color(0xFFE57373),
                      label: 'Collection Point',
                      count: 0)),
            ],
          ),
          const Divider(thickness: 1, color: Color(0xFFE0E0E0), height: 32),
          Row(
            children: const [
              Expanded(
                  child: _DirectoryItem(
                      icon: Icons.local_shipping,
                      color: Color(0xFF5C6BC0),
                      label: 'Transport',
                      count: 0)),
              VerticalDivider(thickness: 1, color: Color(0xFFE0E0E0)),
              Expanded(
                  child: _DirectoryItem(
                      icon: Icons.assignment,
                      color: Color(0xFFFFD54F),
                      label: 'Delivery Order',
                      count: 0)),
            ],
          ),
        ],
      ),
    );
  }
}

class _DirectoryItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  final int count;

  const _DirectoryItem({
    required this.icon,
    required this.color,
    required this.label,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: color.withOpacity(0.12),
          radius: 28,
          child: Icon(icon, color: color, size: 32),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$count',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF757575),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _TransactionFrame extends StatelessWidget {
  const _TransactionFrame();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: const [
              Text(
                'Jan',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF757575),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '19',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Fathur Nugroho',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3F51B5),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Eric Vincent',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFE57373),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                '+125.00 kg',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00897B),
                ),
              ),
              const SizedBox(height: 2),
              Row(
                children: const [
                  Text(
                    'Approve',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF00897B),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.check_circle, color: Color(0xFF00897B), size: 20),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
