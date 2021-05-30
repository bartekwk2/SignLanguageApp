abstract class IConnectivityDataSource {
  Future<bool> get isConnected;
  Stream<bool> get isConnectedStream;
}
