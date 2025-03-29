class RunConfigurations {
  static String sentryDsn = const String.fromEnvironment(
    'sentryDsn',
  );

  static String envName = const String.fromEnvironment(
    'env',
  );
}
