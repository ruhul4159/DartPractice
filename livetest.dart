//function displayFruitDetails that takes the fruits list 
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}

//function applyPriceDiscount() that takes the fruits list and a discount percentage 
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  fruits.forEach((fruit) {
    fruit['price'] -= fruit['price'] * (discountPercentage / 100);
  });
}

void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0}
  ];

  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  double discountPercentage = 10.0;
  applyPriceDiscount(fruits, discountPercentage);

  print('\nFruit Details After Applying ${discountPercentage}% Discount:');
  displayFruitDetails(fruits);
}
//ruhul35884@gmail.com