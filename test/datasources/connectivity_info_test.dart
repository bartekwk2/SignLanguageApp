import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inz/data/datasources/connectivity/connectivity_datasource.dart';
import 'package:inz/data/datasources/connectivity/i_connectivity_datasource.dart';
import 'package:mockito/mockito.dart';

class ConnectivityMock extends Mock implements Connectivity {}

void main() {
  Connectivity connectivity;
  IConnectivityDataSource connectivityDataSource;

  setUp(() {
    connectivity = ConnectivityMock();
    connectivityDataSource = ConnectivityDatasource(connectivity: connectivity);
  });

  group('isConnected', () {
    test('Connected -> true, Unconnected -> false', () async {
      when(connectivity.checkConnectivity())
          .thenAnswer((_) => Future.value(ConnectivityResult.none));

      final result = await connectivityDataSource.isConnected;

      expect(result, false);
      verify(connectivity.checkConnectivity());
    });
  });
}
