// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'directory_model.dart';

class DirectoryModelMapper extends ClassMapperBase<DirectoryModel> {
  DirectoryModelMapper._();

  static DirectoryModelMapper? _instance;
  static DirectoryModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DirectoryModelMapper._());
      DirectoryStatsModelMapper.ensureInitialized();
      TransactionModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DirectoryModel';

  static DirectoryStatsModel _$directory(DirectoryModel v) => v.directory;
  static const Field<DirectoryModel, DirectoryStatsModel> _f$directory =
      Field('directory', _$directory);
  static List<TransactionModel> _$transactions(DirectoryModel v) =>
      v.transactions;
  static const Field<DirectoryModel, List<TransactionModel>> _f$transactions =
      Field('transactions', _$transactions);

  @override
  final MappableFields<DirectoryModel> fields = const {
    #directory: _f$directory,
    #transactions: _f$transactions,
  };

  static DirectoryModel _instantiate(DecodingData data) {
    return DirectoryModel(
        directory: data.dec(_f$directory),
        transactions: data.dec(_f$transactions));
  }

  @override
  final Function instantiate = _instantiate;

  static DirectoryModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DirectoryModel>(map);
  }

  static DirectoryModel fromJson(String json) {
    return ensureInitialized().decodeJson<DirectoryModel>(json);
  }
}

mixin DirectoryModelMappable {
  String toJson() {
    return DirectoryModelMapper.ensureInitialized()
        .encodeJson<DirectoryModel>(this as DirectoryModel);
  }

  Map<String, dynamic> toMap() {
    return DirectoryModelMapper.ensureInitialized()
        .encodeMap<DirectoryModel>(this as DirectoryModel);
  }

  DirectoryModelCopyWith<DirectoryModel, DirectoryModel, DirectoryModel>
      get copyWith =>
          _DirectoryModelCopyWithImpl<DirectoryModel, DirectoryModel>(
              this as DirectoryModel, $identity, $identity);
  @override
  String toString() {
    return DirectoryModelMapper.ensureInitialized()
        .stringifyValue(this as DirectoryModel);
  }

  @override
  bool operator ==(Object other) {
    return DirectoryModelMapper.ensureInitialized()
        .equalsValue(this as DirectoryModel, other);
  }

  @override
  int get hashCode {
    return DirectoryModelMapper.ensureInitialized()
        .hashValue(this as DirectoryModel);
  }
}

extension DirectoryModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DirectoryModel, $Out> {
  DirectoryModelCopyWith<$R, DirectoryModel, $Out> get $asDirectoryModel =>
      $base.as((v, t, t2) => _DirectoryModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DirectoryModelCopyWith<$R, $In extends DirectoryModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  DirectoryStatsModelCopyWith<$R, DirectoryStatsModel, DirectoryStatsModel>
      get directory;
  ListCopyWith<$R, TransactionModel,
          TransactionModelCopyWith<$R, TransactionModel, TransactionModel>>
      get transactions;
  $R call(
      {DirectoryStatsModel? directory, List<TransactionModel>? transactions});
  DirectoryModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DirectoryModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DirectoryModel, $Out>
    implements DirectoryModelCopyWith<$R, DirectoryModel, $Out> {
  _DirectoryModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DirectoryModel> $mapper =
      DirectoryModelMapper.ensureInitialized();
  @override
  DirectoryStatsModelCopyWith<$R, DirectoryStatsModel, DirectoryStatsModel>
      get directory =>
          $value.directory.copyWith.$chain((v) => call(directory: v));
  @override
  ListCopyWith<$R, TransactionModel,
          TransactionModelCopyWith<$R, TransactionModel, TransactionModel>>
      get transactions => ListCopyWith($value.transactions,
          (v, t) => v.copyWith.$chain(t), (v) => call(transactions: v));
  @override
  $R call(
          {DirectoryStatsModel? directory,
          List<TransactionModel>? transactions}) =>
      $apply(FieldCopyWithData({
        if (directory != null) #directory: directory,
        if (transactions != null) #transactions: transactions
      }));
  @override
  DirectoryModel $make(CopyWithData data) => DirectoryModel(
      directory: data.get(#directory, or: $value.directory),
      transactions: data.get(#transactions, or: $value.transactions));

  @override
  DirectoryModelCopyWith<$R2, DirectoryModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DirectoryModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DirectoryStatsModelMapper extends ClassMapperBase<DirectoryStatsModel> {
  DirectoryStatsModelMapper._();

  static DirectoryStatsModelMapper? _instance;
  static DirectoryStatsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DirectoryStatsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DirectoryStatsModel';

  static int _$plantations(DirectoryStatsModel v) => v.plantations;
  static const Field<DirectoryStatsModel, int> _f$plantations =
      Field('plantations', _$plantations);
  static int _$collectionPoints(DirectoryStatsModel v) => v.collectionPoints;
  static const Field<DirectoryStatsModel, int> _f$collectionPoints =
      Field('collectionPoints', _$collectionPoints, key: r'collection_points');
  static int _$transport(DirectoryStatsModel v) => v.transport;
  static const Field<DirectoryStatsModel, int> _f$transport =
      Field('transport', _$transport);
  static int _$deliveryOrders(DirectoryStatsModel v) => v.deliveryOrders;
  static const Field<DirectoryStatsModel, int> _f$deliveryOrders =
      Field('deliveryOrders', _$deliveryOrders, key: r'delivery_orders');

  @override
  final MappableFields<DirectoryStatsModel> fields = const {
    #plantations: _f$plantations,
    #collectionPoints: _f$collectionPoints,
    #transport: _f$transport,
    #deliveryOrders: _f$deliveryOrders,
  };

  static DirectoryStatsModel _instantiate(DecodingData data) {
    return DirectoryStatsModel(
        plantations: data.dec(_f$plantations),
        collectionPoints: data.dec(_f$collectionPoints),
        transport: data.dec(_f$transport),
        deliveryOrders: data.dec(_f$deliveryOrders));
  }

  @override
  final Function instantiate = _instantiate;

  static DirectoryStatsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DirectoryStatsModel>(map);
  }

  static DirectoryStatsModel fromJson(String json) {
    return ensureInitialized().decodeJson<DirectoryStatsModel>(json);
  }
}

mixin DirectoryStatsModelMappable {
  String toJson() {
    return DirectoryStatsModelMapper.ensureInitialized()
        .encodeJson<DirectoryStatsModel>(this as DirectoryStatsModel);
  }

  Map<String, dynamic> toMap() {
    return DirectoryStatsModelMapper.ensureInitialized()
        .encodeMap<DirectoryStatsModel>(this as DirectoryStatsModel);
  }

  DirectoryStatsModelCopyWith<DirectoryStatsModel, DirectoryStatsModel,
      DirectoryStatsModel> get copyWith => _DirectoryStatsModelCopyWithImpl<
          DirectoryStatsModel, DirectoryStatsModel>(
      this as DirectoryStatsModel, $identity, $identity);
  @override
  String toString() {
    return DirectoryStatsModelMapper.ensureInitialized()
        .stringifyValue(this as DirectoryStatsModel);
  }

  @override
  bool operator ==(Object other) {
    return DirectoryStatsModelMapper.ensureInitialized()
        .equalsValue(this as DirectoryStatsModel, other);
  }

  @override
  int get hashCode {
    return DirectoryStatsModelMapper.ensureInitialized()
        .hashValue(this as DirectoryStatsModel);
  }
}

extension DirectoryStatsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DirectoryStatsModel, $Out> {
  DirectoryStatsModelCopyWith<$R, DirectoryStatsModel, $Out>
      get $asDirectoryStatsModel => $base.as(
          (v, t, t2) => _DirectoryStatsModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DirectoryStatsModelCopyWith<$R, $In extends DirectoryStatsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? plantations,
      int? collectionPoints,
      int? transport,
      int? deliveryOrders});
  DirectoryStatsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DirectoryStatsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DirectoryStatsModel, $Out>
    implements DirectoryStatsModelCopyWith<$R, DirectoryStatsModel, $Out> {
  _DirectoryStatsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DirectoryStatsModel> $mapper =
      DirectoryStatsModelMapper.ensureInitialized();
  @override
  $R call(
          {int? plantations,
          int? collectionPoints,
          int? transport,
          int? deliveryOrders}) =>
      $apply(FieldCopyWithData({
        if (plantations != null) #plantations: plantations,
        if (collectionPoints != null) #collectionPoints: collectionPoints,
        if (transport != null) #transport: transport,
        if (deliveryOrders != null) #deliveryOrders: deliveryOrders
      }));
  @override
  DirectoryStatsModel $make(CopyWithData data) => DirectoryStatsModel(
      plantations: data.get(#plantations, or: $value.plantations),
      collectionPoints:
          data.get(#collectionPoints, or: $value.collectionPoints),
      transport: data.get(#transport, or: $value.transport),
      deliveryOrders: data.get(#deliveryOrders, or: $value.deliveryOrders));

  @override
  DirectoryStatsModelCopyWith<$R2, DirectoryStatsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DirectoryStatsModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TransactionModelMapper extends ClassMapperBase<TransactionModel> {
  TransactionModelMapper._();

  static TransactionModelMapper? _instance;
  static TransactionModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TransactionModelMapper._());
      TransactionDateModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TransactionModel';

  static TransactionDateModel _$date(TransactionModel v) => v.date;
  static const Field<TransactionModel, TransactionDateModel> _f$date =
      Field('date', _$date);
  static String _$mainUser(TransactionModel v) => v.mainUser;
  static const Field<TransactionModel, String> _f$mainUser =
      Field('mainUser', _$mainUser, key: r'main_user');
  static String _$secondaryUser(TransactionModel v) => v.secondaryUser;
  static const Field<TransactionModel, String> _f$secondaryUser =
      Field('secondaryUser', _$secondaryUser, key: r'secondary_user');
  static double _$weightKg(TransactionModel v) => v.weightKg;
  static const Field<TransactionModel, double> _f$weightKg =
      Field('weightKg', _$weightKg, key: r'weight_kg');
  static String _$status(TransactionModel v) => v.status;
  static const Field<TransactionModel, String> _f$status =
      Field('status', _$status);

  @override
  final MappableFields<TransactionModel> fields = const {
    #date: _f$date,
    #mainUser: _f$mainUser,
    #secondaryUser: _f$secondaryUser,
    #weightKg: _f$weightKg,
    #status: _f$status,
  };

  static TransactionModel _instantiate(DecodingData data) {
    return TransactionModel(
        date: data.dec(_f$date),
        mainUser: data.dec(_f$mainUser),
        secondaryUser: data.dec(_f$secondaryUser),
        weightKg: data.dec(_f$weightKg),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;

  static TransactionModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TransactionModel>(map);
  }

  static TransactionModel fromJson(String json) {
    return ensureInitialized().decodeJson<TransactionModel>(json);
  }
}

mixin TransactionModelMappable {
  String toJson() {
    return TransactionModelMapper.ensureInitialized()
        .encodeJson<TransactionModel>(this as TransactionModel);
  }

  Map<String, dynamic> toMap() {
    return TransactionModelMapper.ensureInitialized()
        .encodeMap<TransactionModel>(this as TransactionModel);
  }

  TransactionModelCopyWith<TransactionModel, TransactionModel, TransactionModel>
      get copyWith =>
          _TransactionModelCopyWithImpl<TransactionModel, TransactionModel>(
              this as TransactionModel, $identity, $identity);
  @override
  String toString() {
    return TransactionModelMapper.ensureInitialized()
        .stringifyValue(this as TransactionModel);
  }

  @override
  bool operator ==(Object other) {
    return TransactionModelMapper.ensureInitialized()
        .equalsValue(this as TransactionModel, other);
  }

  @override
  int get hashCode {
    return TransactionModelMapper.ensureInitialized()
        .hashValue(this as TransactionModel);
  }
}

extension TransactionModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TransactionModel, $Out> {
  TransactionModelCopyWith<$R, TransactionModel, $Out>
      get $asTransactionModel => $base
          .as((v, t, t2) => _TransactionModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TransactionModelCopyWith<$R, $In extends TransactionModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  TransactionDateModelCopyWith<$R, TransactionDateModel, TransactionDateModel>
      get date;
  $R call(
      {TransactionDateModel? date,
      String? mainUser,
      String? secondaryUser,
      double? weightKg,
      String? status});
  TransactionModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TransactionModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TransactionModel, $Out>
    implements TransactionModelCopyWith<$R, TransactionModel, $Out> {
  _TransactionModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TransactionModel> $mapper =
      TransactionModelMapper.ensureInitialized();
  @override
  TransactionDateModelCopyWith<$R, TransactionDateModel, TransactionDateModel>
      get date => $value.date.copyWith.$chain((v) => call(date: v));
  @override
  $R call(
          {TransactionDateModel? date,
          String? mainUser,
          String? secondaryUser,
          double? weightKg,
          String? status}) =>
      $apply(FieldCopyWithData({
        if (date != null) #date: date,
        if (mainUser != null) #mainUser: mainUser,
        if (secondaryUser != null) #secondaryUser: secondaryUser,
        if (weightKg != null) #weightKg: weightKg,
        if (status != null) #status: status
      }));
  @override
  TransactionModel $make(CopyWithData data) => TransactionModel(
      date: data.get(#date, or: $value.date),
      mainUser: data.get(#mainUser, or: $value.mainUser),
      secondaryUser: data.get(#secondaryUser, or: $value.secondaryUser),
      weightKg: data.get(#weightKg, or: $value.weightKg),
      status: data.get(#status, or: $value.status));

  @override
  TransactionModelCopyWith<$R2, TransactionModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TransactionModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TransactionDateModelMapper extends ClassMapperBase<TransactionDateModel> {
  TransactionDateModelMapper._();

  static TransactionDateModelMapper? _instance;
  static TransactionDateModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TransactionDateModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TransactionDateModel';

  static String _$month(TransactionDateModel v) => v.month;
  static const Field<TransactionDateModel, String> _f$month =
      Field('month', _$month);
  static int _$day(TransactionDateModel v) => v.day;
  static const Field<TransactionDateModel, int> _f$day = Field('day', _$day);

  @override
  final MappableFields<TransactionDateModel> fields = const {
    #month: _f$month,
    #day: _f$day,
  };

  static TransactionDateModel _instantiate(DecodingData data) {
    return TransactionDateModel(
        month: data.dec(_f$month), day: data.dec(_f$day));
  }

  @override
  final Function instantiate = _instantiate;

  static TransactionDateModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TransactionDateModel>(map);
  }

  static TransactionDateModel fromJson(String json) {
    return ensureInitialized().decodeJson<TransactionDateModel>(json);
  }
}

mixin TransactionDateModelMappable {
  String toJson() {
    return TransactionDateModelMapper.ensureInitialized()
        .encodeJson<TransactionDateModel>(this as TransactionDateModel);
  }

  Map<String, dynamic> toMap() {
    return TransactionDateModelMapper.ensureInitialized()
        .encodeMap<TransactionDateModel>(this as TransactionDateModel);
  }

  TransactionDateModelCopyWith<TransactionDateModel, TransactionDateModel,
      TransactionDateModel> get copyWith => _TransactionDateModelCopyWithImpl<
          TransactionDateModel, TransactionDateModel>(
      this as TransactionDateModel, $identity, $identity);
  @override
  String toString() {
    return TransactionDateModelMapper.ensureInitialized()
        .stringifyValue(this as TransactionDateModel);
  }

  @override
  bool operator ==(Object other) {
    return TransactionDateModelMapper.ensureInitialized()
        .equalsValue(this as TransactionDateModel, other);
  }

  @override
  int get hashCode {
    return TransactionDateModelMapper.ensureInitialized()
        .hashValue(this as TransactionDateModel);
  }
}

extension TransactionDateModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TransactionDateModel, $Out> {
  TransactionDateModelCopyWith<$R, TransactionDateModel, $Out>
      get $asTransactionDateModel => $base.as(
          (v, t, t2) => _TransactionDateModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TransactionDateModelCopyWith<
    $R,
    $In extends TransactionDateModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? month, int? day});
  TransactionDateModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TransactionDateModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TransactionDateModel, $Out>
    implements TransactionDateModelCopyWith<$R, TransactionDateModel, $Out> {
  _TransactionDateModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TransactionDateModel> $mapper =
      TransactionDateModelMapper.ensureInitialized();
  @override
  $R call({String? month, int? day}) => $apply(FieldCopyWithData(
      {if (month != null) #month: month, if (day != null) #day: day}));
  @override
  TransactionDateModel $make(CopyWithData data) => TransactionDateModel(
      month: data.get(#month, or: $value.month),
      day: data.get(#day, or: $value.day));

  @override
  TransactionDateModelCopyWith<$R2, TransactionDateModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TransactionDateModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
