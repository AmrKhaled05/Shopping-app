class Products{
  String _imageUrl;
  String _name;
  double _price;

  Products(this._imageUrl, this._name, this._price);

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get imageUrl => _imageUrl;

  set imageUrl(String value) {
    _imageUrl = value;
  }
}