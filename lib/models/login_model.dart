class LoginModel {
    final bool status;
    final String massage;
    final String token;

    LoginModel({
        required this.status,
        required this.massage,
        required this.token,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        // Dikasih ?? false biar kalau dari server null, nggak bikin aplikasi crash
        status: json["Status"] ?? false, 
        massage: json["Massage"] ?? '',
        token: json["Token"] ?? '',
    );

    Map<String, dynamic> toJson() => {
        "Status": status,
        "Massage": massage,
        "Token": token,
    };
}