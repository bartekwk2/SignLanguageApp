
import 'package:inz/data/datasources/auth/google_auth_datasource.dart';
import 'package:inz/data/datasources/auth/i_auth_datasource.dart';
import 'package:inz/data/datasources/connectivity/i_connectivity_datasource.dart';
import 'package:inz/data/datasources/global_db/i_global_db_datasource.dart';
import 'package:mockito/mockito.dart';

class MockGoogleAuthDatasource extends Mock implements GoogleAuthDatasource {}

class MockAuthDataSource extends Mock implements IAuthDataSource {}

class MockGlobalDbDataSource extends Mock implements IGlobalDbDataSource {}

class MockConnectivityDataSource extends Mock implements IConnectivityDataSource {}