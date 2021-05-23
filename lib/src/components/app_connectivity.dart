import 'package:connectivity/connectivity.dart';

isConnected() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    print("Connected Via Mobile");
  } else if (connectivityResult == ConnectivityResult.wifi) {
    print("Connected Via Wifi");
  }
  return true;
}
