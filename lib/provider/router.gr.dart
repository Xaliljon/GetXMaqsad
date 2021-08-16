/*
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/second_page/select_page_view.dart';
import '../views/view_first_page.dart';

class Routes {
  static const String selectPage = '/';
  static const String firstPage = '/first-page';
  static const all = <String>{
    selectPage,
    firstPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.selectPage, page: SelectPage),
    RouteDef(Routes.firstPage, page: FirstPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SelectPage: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SelectPage(),
        settings: data,
      );
    },
    FirstPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => FirstPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideBottom,
      );
    },
  };
}
*/
