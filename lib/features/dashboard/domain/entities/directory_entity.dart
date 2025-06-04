class DirectoryEntity {
  final DirectoryStatsEntity directory;
  final List<TransactionEntity> transactions;

  const DirectoryEntity({
    required this.directory,
    required this.transactions,
  });

  factory DirectoryEntity.empty() => DirectoryEntity(
        directory: DirectoryStatsEntity.empty(),
        transactions: [],
      );
}

class DirectoryStatsEntity {
  final int plantations;
  final int collectionPoints;
  final int transport;
  final int deliveryOrders;

  const DirectoryStatsEntity({
    required this.plantations,
    required this.collectionPoints,
    required this.transport,
    required this.deliveryOrders,
  });

  factory DirectoryStatsEntity.empty() => const DirectoryStatsEntity(
        plantations: 0,
        collectionPoints: 0,
        transport: 0,
        deliveryOrders: 0,
      );
}

class TransactionEntity {
  final TransactionDateEntity date;
  final String mainUser;
  final String secondaryUser;
  final double weightKg;
  final String status;

  const TransactionEntity({
    required this.date,
    required this.mainUser,
    required this.secondaryUser,
    required this.weightKg,
    required this.status,
  });

  factory TransactionEntity.empty() => TransactionEntity(
        date: TransactionDateEntity.empty(),
        mainUser: '',
        secondaryUser: '',
        weightKg: 0.0,
        status: '',
      );
}

class TransactionDateEntity {
  final String month;
  final int day;

  const TransactionDateEntity({
    required this.month,
    required this.day,
  });

  factory TransactionDateEntity.empty() => const TransactionDateEntity(
        month: '',
        day: 0,
      );
}
