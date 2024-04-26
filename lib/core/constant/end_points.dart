
class EndPoints{
  static const String baseUrl = "https://eejar.com/mobile";
  ///////////////////////   -------   ///////////////////////
  static const String login = "/login";
  static const String register = "/registerUser";
  static const String forgetPassword = "/forgetPassword";
  static const String resetPassword = "/resetPassword";
  static const String verifyOtp = "/verifyOtp";
  static const String resendotp = "/resendotp";

//! Mark : MHamad
    static const String subscription = "$baseUrl/subscriptions";
    static const String mySubscription = "$baseUrl/mySubscriptions";
    static const String myProducts = "$baseUrl/myProducts";
        static const String processingOrders = "$baseUrl/getProcessingOrders";
        static const String setCardInfo = "$baseUrl/setCardInfo";
        static const String subscripe = "$baseUrl/subscripe";
        static const String activeSubscription = "$baseUrl/activeSubscriptions";
        static const String getCategoryAttributes = "$baseUrl/getCategoryAttributes";
        static const String addPhotoToProduct = "$baseUrl/addPhotoToProduct";
        static const String updateProduct = "$baseUrl/updateProduct";

        static const String rateProduct = "$baseUrl/rateProduct";
        static const String storeOrder = "$baseUrl/storeOrder";



                static const String getFullCountries = "$baseUrl/getFullCountries";
                static const String getFullCurrencies = "$baseUrl/getFullCurrencies";
                static const String getFullCountry = "$baseUrl/getFullCountry";
                static const String getFullCity = "$baseUrl/getFullCity";
                static const String getProfile = "$baseUrl/profile";
                static const String setProfile = "$baseUrl/setProfile";


}