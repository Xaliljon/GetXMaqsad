import 'package:auto_route/auto_route_annotations.dart';
import 'package:getx_app/views/second_page/select_page_view.dart';
import 'package:getx_app/views/view_first_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  CupertinoRoute(page: SelectPage,initial: true),
  CupertinoRoute(page: FirstPage),
])
class $AppRouter {}
