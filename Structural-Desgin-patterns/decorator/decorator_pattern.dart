// want to add behavior to an object dynamically

abstract class Shap {
  String draw();
}

class Square implements Shap {
  @override
  String draw() {
    return 'Square';
  }
}

class Triangle implements Shap {
  @override
  String draw() {
    return 'Triangle';
  }
}

abstract class ShapDecorator implements Shap {
  final Shap shap;

  ShapDecorator(this.shap);
}

class GreenShapeDecorator extends ShapDecorator {
  GreenShapeDecorator(Shap shap) : super(shap);

  @override
  String draw() => 'Green ' + shap.draw();
}

class BlueShapeDecorator extends ShapDecorator {
  BlueShapeDecorator(Shap shap) : super(shap);
  @override
  String draw() => 'Blue ' + shap.draw();
}

void main() {
  final square = Square();
  print(square.draw());

  final greenSquare = GreenShapeDecorator(square);
  print(greenSquare.draw());

  final blueSquare = BlueShapeDecorator(square);
  print(blueSquare.draw());

  final blueGreenSquare = BlueShapeDecorator(greenSquare);
  print(blueGreenSquare.draw());
}
