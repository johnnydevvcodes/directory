import 'package:flutter/material.dart';
import 'package:flutterexam/features/dashboard/domain/entities/directory_entity.dart';

class TransactionWidget extends StatelessWidget {
  final List<TransactionEntity> transactions;
  const TransactionWidget({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    final transaction = transactions.isNotEmpty ? transactions.first : null;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(42),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                transaction?.date.month ?? '--',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF757575),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                transaction != null ? transaction.date.day.toString() : '--',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Container(
            height: 48,
            width: 1,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: const VerticalDivider(
              thickness: .2,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction?.mainUser ?? '--',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3F51B5),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  transaction?.secondaryUser ?? '--',
                  style: const TextStyle(
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
              Text(
                transaction != null
                    ? '+${transaction.weightKg.toStringAsFixed(2)} kg'
                    : '--',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF00897B),
                ),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    transaction?.status == 'approved'
                        ? 'Approve'
                        : (transaction?.status ?? '--'),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF00897B),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  if (transaction?.status == 'approved')
                    const Icon(
                      Icons.check_circle_outline,
                      color: Color(0xFF00897B),
                      size: 20,
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
