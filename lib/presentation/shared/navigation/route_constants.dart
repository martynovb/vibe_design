class RouteItem {
  const RouteItem({
    required this.path,
    required this.name,
  });

  final String path;
  final String name;
}

class RouteConstants {
  static const RouteItem home = RouteItem(
    path: '/',
    name: 'Home',
  );

  static RouteItem details({
    Map<String, dynamic>? params,
  }) {
    final uri = Uri(
      path: '/details',
      queryParameters: params,
    );
    return RouteItem(
      path: uri.toString(),
      name: 'Details',
    );
  }
}
