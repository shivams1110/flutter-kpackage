class ApiList {
  static const bool isProduction = true;

  // static const environmentType =
  //     isProduction ? ENVIRONMENT.production : ENVIRONMENT.staging;

  static const baseDomain = isProduction
      ? ""
      : "";

  static const loginWithMicrosoft = baseDomain + "";

}
