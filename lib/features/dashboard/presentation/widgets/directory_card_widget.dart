import 'package:flutter/material.dart';
import 'package:flutterexam/core/gen/assets.gen.dart';
import 'package:flutterexam/features/dashboard/domain/entities/directory_entity.dart';
import 'package:flutterexam/features/dashboard/presentation/widgets/directory_item_widget.dart';

class DirectoryCardWidget extends StatelessWidget {
  final DirectoryStatsEntity? directory;
  const DirectoryCardWidget({super.key, this.directory});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(42),
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
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: DirectoryItem(
                  iconWidget: Assets.plantations.svg(width: 32, height: 32),
                  label: 'Plantations',
                  count: directory?.plantations ?? 0,
                ),
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
                child: DirectoryItem(
                  iconWidget: Assets.cp.svg(width: 32, height: 32),
                  label: 'Collection Point',
                  count: directory?.collectionPoints ?? 0,
                ),
              ),
            ],
          ),
          const Divider(thickness: .2, height: 32),
          Row(
            children: [
              Expanded(
                child: DirectoryItem(
                  iconWidget: Assets.transport.svg(width: 32, height: 32),
                  label: 'Transport',
                  count: directory?.transport ?? 0,
                ),
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
                child: DirectoryItem(
                  iconWidget: Assets.doc.svg(width: 32, height: 32),
                  label: 'Delivery Order',
                  count: directory?.deliveryOrders ?? 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
