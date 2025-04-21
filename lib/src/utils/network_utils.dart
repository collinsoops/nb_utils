import 'package:connectivity/connectivity.dart';
import 'package:nb_utils/nb_utils.dart';

/// returns true if network is available
Future<ConnectivityResult> checkConnectivityResult() async {
  var connectivityResult = await Connectivity().checkConnectivity();

  if (connectivityResult !=(ConnectivityResult.none)) {
    return connectivityResult;
  } else {
    return ConnectivityResult.none;
  }
}

/// returns true if network is available
Future<bool> isNetworkAvailable() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  if(connectivityResult != ConnectivityResult.none) {
    return true;
  } else {
   // toast('No Internet Connection');
    return false;
  }

}

/// returns true if connected to mobile
Future<bool> isConnectedToMobile() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  //return connectivityResult.contains(ConnectivityResult.mobile);
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else {
    return false;
  }
}

/// returns true if connected to wifi
Future<bool> isConnectedToWiFi() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  //return connectivityResult.contains(ConnectivityResult.wifi);
  if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  } else {
    return false;
  }
}

/// returns true if connected to ethernet
Future<bool> isConnectedToEthernet() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  //return connectivityResult.contains(ConnectivityResult.ethernet);
  if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  } else {
    return false;
  }
}

/// returns true if connected to bluetooth
Future<bool> isConnectedToBluetooth() async {
  var connectivityResult = await Connectivity().checkConnectivity();
 // return connectivityResult.contains(ConnectivityResult.bluetooth);
  if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  } else {
    return false;
  }
}

/*/// returns true if connected to vpn
Future<bool> isConnectedToVPN() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  return connectivityResult.contains(ConnectivityResult.vpn);
}

/// returns true if connected to other
Future<bool> isConnectedToOther() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  return connectivityResult.contains(ConnectivityResult.other);
}*/
