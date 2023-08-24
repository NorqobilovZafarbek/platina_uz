abstract final class ApiConst {
  // static const _baseUrl = String.fromEnvironment(
  //   "base_url",
  //   defaultValue: "...",
  // );

  // static const apiKey = String.fromEnvironment(
  //   "api_key",
  //   defaultValue: "...",
  // );

  static const _baseUrl = "https://cp.dev.platina.uz";

  static const host = "/uz/api";


  static const categories = "$_baseUrl$host/categories";


  static Map<String, List<String>> searchParams(String searchText) => {
    "q": [searchText],
  };

  static Map<String, List<String>> paginationParams(int limit, int skip) => {
    "limit": ["$limit"],
    "skip": ["$skip"],
  };
}
