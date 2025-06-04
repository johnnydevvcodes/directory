import 'package:dart_mappable/dart_mappable.dart';
import 'package:directory/features/dashboard/domain/dashboard_domain.dart';
import 'package:directory/features/dashboard/domain/entities/directory_entity.dart';

part 'directory_model.mapper.dart';

@MappableClass()
class DirectoryModel with DirectoryModelMappable {
  final DirectoryStatsModel directory;
  final List<TransactionModel> transactions;

  const DirectoryModel({
    required this.directory,
    required this.transactions,
  });

  DirectoryEntity toEntity() => DirectoryEntity(
        directory: directory.toEntity(),
        transactions: transactions.map((e) => e.toEntity()).toList(),
      );
}

@MappableClass()
class DirectoryStatsModel with DirectoryStatsModelMappable {
  final int plantations;
  final int collectionPoints;
  final int transport;
  final int deliveryOrders;

  const DirectoryStatsModel({
    required this.plantations,
    @MappableField(key: 'collection_points') required this.collectionPoints,
    required this.transport,
    @MappableField(key: 'delivery_orders') required this.deliveryOrders,
  });

  DirectoryStatsEntity toEntity() => DirectoryStatsEntity(
        plantations: plantations,
        collectionPoints: collectionPoints,
        transport: transport,
        deliveryOrders: deliveryOrders,
      );
}

@MappableClass()
class TransactionModel with TransactionModelMappable {
  final TransactionDateModel date;
  final String mainUser;
  final String secondaryUser;
  final double weightKg;
  final String status;

  const TransactionModel({
    required this.date,
    @MappableField(key: 'main_user') required this.mainUser,
    @MappableField(key: 'secondary_user') required this.secondaryUser,
    @MappableField(key: 'weight_kg') required this.weightKg,
    required this.status,
  });

  TransactionEntity toEntity() => TransactionEntity(
        date: date.toEntity(),
        mainUser: mainUser,
        secondaryUser: secondaryUser,
        weightKg: weightKg,
        status: status,
      );
}

@MappableClass()
class TransactionDateModel with TransactionDateModelMappable {
  final String month;
  final int day;

  const TransactionDateModel({
    required this.month,
    required this.day,
  });

  TransactionDateEntity toEntity() => TransactionDateEntity(
        month: month,
        day: day,
      );
}
