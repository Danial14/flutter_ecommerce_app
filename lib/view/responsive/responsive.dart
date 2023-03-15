import 'package:ecommerce_app/res/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  late Widget _mobileScaffold;
  late Widget _tabletScaffold;
  late Widget _desktopScaffold;
  ResponsiveLayout(Widget mobileScaffold, Widget tabletScaffold, Widget desktopScaffold){
    this._mobileScaffold = mobileScaffold;
    this._desktopScaffold = desktopScaffold;
    this._tabletScaffold = tabletScaffold;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints){
      if(constraints.maxWidth >= 400 && constraints.maxWidth < 600){
        return this._mobileScaffold;
      }
      else if(constraints.maxWidth > 600 && constraints.maxWidth < 1100){
        return this._tabletScaffold;
      }
      else{
        return this._desktopScaffold;
      }
    });
  }
}
