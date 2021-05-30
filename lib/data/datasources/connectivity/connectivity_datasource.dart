import 'package:connectivity/connectivity.dart';
import 'package:inz/data/datasources/connectivity/i_connectivity_datasource.dart';

class ConnectivityDatasource implements IConnectivityDataSource {
  final Connectivity connectivity;

  ConnectivityDatasource({this.connectivity});

  @override
  Future<bool> get isConnected async {
    final result = await connectivity.checkConnectivity();
    return _connectivityToBool(result);
  }

  @override
  Stream<bool> get isConnectedStream =>
      connectivity.onConnectivityChanged.map(_connectivityToBool);

  bool _connectivityToBool(ConnectivityResult result) {
    if (result != ConnectivityResult.none) {
      return true;
    } else {
      return false;
    }
  }
}
