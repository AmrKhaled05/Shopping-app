import 'Products.dart';
class User{
  String _fullName;
  String _email;
  String  _password;
 List<Products>_currentPurchasedProducts;
  List<Products>_historyPurchasedProducts;

  List<Products> get currentPurchasedProducts => _currentPurchasedProducts;

  set currentPurchasedProducts(List<Products> value) {
    _currentPurchasedProducts = value;
  }

  User(this._fullName, this._email, this._password,
      this._currentPurchasedProducts, this._historyPurchasedProducts);

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get fullName => _fullName;

  set fullName(String value) {
    _fullName = value;
  }

  List<Products> get historyPurchasedProducts => _historyPurchasedProducts;

  set historyPurchasedProducts(List<Products> value) {
    _historyPurchasedProducts = value;
  }
}