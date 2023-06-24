enum ENDPOINT { LOGIN }

abstract class EndpointConfig {
  static const String _host = "http://localhost:8080";
  static const String _httpPathConst = "/user";
  static final Map<ENDPOINT, String> _ENDPOINTS = {
//APPVERSION
    ENDPOINT.LOGIN: "/login",
  };

  static String getEndpoint(ENDPOINT endpoint) =>
      "$_host$_httpPathConst${_ENDPOINTS[endpoint]}";
}
