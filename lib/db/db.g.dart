// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorMyDataBase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$MyDataBaseBuilder databaseBuilder(String name) =>
      _$MyDataBaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$MyDataBaseBuilder inMemoryDatabaseBuilder() =>
      _$MyDataBaseBuilder(null);
}

class _$MyDataBaseBuilder {
  _$MyDataBaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$MyDataBaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$MyDataBaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<MyDataBase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$MyDataBase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$MyDataBase extends MyDataBase {
  _$MyDataBase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  StationDao? _stationDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Station` (`stationID` INTEGER, `stationName` TEXT, `pinYin` TEXT, `searchPinYin` TEXT, `pinYinHead` TEXT, `firstLetter` TEXT, `hotFlag` INTEGER, `bureauID` INTEGER, `stationGradeID` INTEGER, `ctripCityID` INTEGER, `cityName` TEXT, `cityNameEn` TEXT, `ctiyFirstLetter` TEXT, `cityCode` TEXT, `teleCode` TEXT, `lastUpdateTime` TEXT, `latitude` REAL, `longitude` REAL, `provinceName` TEXT, PRIMARY KEY (`stationID`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  StationDao get stationDao {
    return _stationDaoInstance ??= _$StationDao(database, changeListener);
  }
}

class _$StationDao extends StationDao {
  _$StationDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _stationInsertionAdapter = InsertionAdapter(
            database,
            'Station',
            (Station item) => <String, Object?>{
                  'stationID': item.stationID,
                  'stationName': item.stationName,
                  'pinYin': item.pinYin,
                  'searchPinYin': item.searchPinYin,
                  'pinYinHead': item.pinYinHead,
                  'firstLetter': item.firstLetter,
                  'hotFlag': item.hotFlag,
                  'bureauID': item.bureauID,
                  'stationGradeID': item.stationGradeID,
                  'ctripCityID': item.ctripCityID,
                  'cityName': item.cityName,
                  'cityNameEn': item.cityNameEn,
                  'ctiyFirstLetter': item.ctiyFirstLetter,
                  'cityCode': item.cityCode,
                  'teleCode': item.teleCode,
                  'lastUpdateTime': item.lastUpdateTime,
                  'latitude': item.latitude,
                  'longitude': item.longitude,
                  'provinceName': item.provinceName
                }),
        _stationUpdateAdapter = UpdateAdapter(
            database,
            'Station',
            ['stationID'],
            (Station item) => <String, Object?>{
                  'stationID': item.stationID,
                  'stationName': item.stationName,
                  'pinYin': item.pinYin,
                  'searchPinYin': item.searchPinYin,
                  'pinYinHead': item.pinYinHead,
                  'firstLetter': item.firstLetter,
                  'hotFlag': item.hotFlag,
                  'bureauID': item.bureauID,
                  'stationGradeID': item.stationGradeID,
                  'ctripCityID': item.ctripCityID,
                  'cityName': item.cityName,
                  'cityNameEn': item.cityNameEn,
                  'ctiyFirstLetter': item.ctiyFirstLetter,
                  'cityCode': item.cityCode,
                  'teleCode': item.teleCode,
                  'lastUpdateTime': item.lastUpdateTime,
                  'latitude': item.latitude,
                  'longitude': item.longitude,
                  'provinceName': item.provinceName
                }),
        _stationDeletionAdapter = DeletionAdapter(
            database,
            'Station',
            ['stationID'],
            (Station item) => <String, Object?>{
                  'stationID': item.stationID,
                  'stationName': item.stationName,
                  'pinYin': item.pinYin,
                  'searchPinYin': item.searchPinYin,
                  'pinYinHead': item.pinYinHead,
                  'firstLetter': item.firstLetter,
                  'hotFlag': item.hotFlag,
                  'bureauID': item.bureauID,
                  'stationGradeID': item.stationGradeID,
                  'ctripCityID': item.ctripCityID,
                  'cityName': item.cityName,
                  'cityNameEn': item.cityNameEn,
                  'ctiyFirstLetter': item.ctiyFirstLetter,
                  'cityCode': item.cityCode,
                  'teleCode': item.teleCode,
                  'lastUpdateTime': item.lastUpdateTime,
                  'latitude': item.latitude,
                  'longitude': item.longitude,
                  'provinceName': item.provinceName
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Station> _stationInsertionAdapter;

  final UpdateAdapter<Station> _stationUpdateAdapter;

  final DeletionAdapter<Station> _stationDeletionAdapter;

  @override
  Future<List<Station>> findAllStations() async {
    return _queryAdapter.queryList('SELECT * FROM Station',
        mapper: (Map<String, Object?> row) => Station(
            row['stationID'] as int?,
            row['stationName'] as String?,
            row['pinYin'] as String?,
            row['searchPinYin'] as String?,
            row['pinYinHead'] as String?,
            row['firstLetter'] as String?,
            row['hotFlag'] as int?,
            row['bureauID'] as int?,
            row['stationGradeID'] as int?,
            row['ctripCityID'] as int?,
            row['cityName'] as String?,
            row['cityNameEn'] as String?,
            row['ctiyFirstLetter'] as String?,
            row['cityCode'] as String?,
            row['teleCode'] as String?,
            row['lastUpdateTime'] as String?,
            row['latitude'] as double?,
            row['longitude'] as double?,
            row['provinceName'] as String?));
  }

  @override
  Future<List<Station>> findAllStationById(String stationID) async {
    return _queryAdapter.queryList('SELECT * FROM Station WHERE stationID=?1',
        mapper: (Map<String, Object?> row) => Station(
            row['stationID'] as int?,
            row['stationName'] as String?,
            row['pinYin'] as String?,
            row['searchPinYin'] as String?,
            row['pinYinHead'] as String?,
            row['firstLetter'] as String?,
            row['hotFlag'] as int?,
            row['bureauID'] as int?,
            row['stationGradeID'] as int?,
            row['ctripCityID'] as int?,
            row['cityName'] as String?,
            row['cityNameEn'] as String?,
            row['ctiyFirstLetter'] as String?,
            row['cityCode'] as String?,
            row['teleCode'] as String?,
            row['lastUpdateTime'] as String?,
            row['latitude'] as double?,
            row['longitude'] as double?,
            row['provinceName'] as String?),
        arguments: [stationID]);
  }

  @override
  Future<void> insertStation(Station station) async {
    await _stationInsertionAdapter.insert(station, OnConflictStrategy.abort);
  }

  @override
  Future<int> updateStation(Station station) {
    return _stationUpdateAdapter.updateAndReturnChangedRows(
        station, OnConflictStrategy.abort);
  }

  @override
  Future<int> deleteStationInfo(Station station) {
    return _stationDeletionAdapter.deleteAndReturnChangedRows(station);
  }
}
