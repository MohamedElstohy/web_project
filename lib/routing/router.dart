import 'package:flutter/material.dart';

import 'package:web_project/pages/authentication/authentication.dart';
import 'package:web_project/pages/clients/clients.dart';
import 'package:web_project/pages/drivers/drivers.dart';
import 'package:web_project/pages/overview/overview.dart';

import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());    
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(AuthenticationPage());
  }
}

MaterialPageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}