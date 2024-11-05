void main() {
  Car myCar = Car('Blue');
  print('Car color: ${myCar.getColor()}');

  myCar.setColor('Red');
  print('New car color: ${myCar.getColor()}');
}

class Car {
  String? _color; // Nullable private variable

  Car(String color) {
    _color = color;
  }
  
  void setColor(String newColor) {
    _color = newColor;
  }

  String getColor() {
    return _color ?? 'Unknown'; // Return 'Unknown' if _color is null
  }

  
}

