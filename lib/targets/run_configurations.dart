class RunConfigurations {
  static String sentryDsn = const String.fromEnvironment(
    'sentryDsn',
  );

  static String jsonbinAccessKey = const String.fromEnvironment(
    'jsonbinAccessKey',
  );

  static String jsonbinMasterKey = const String.fromEnvironment(
    'jsonbinMasterKey',
  );
}
