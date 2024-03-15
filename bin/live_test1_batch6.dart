void main() {
  // Creating a list of fruits represented as maps
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0}
  ];

  // Displaying original fruit details
  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);

  // Applying discount of 10%
  applyPriceDiscount(fruits, 10);

  // Displaying fruit details after applying discount
  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}

// Function to display the details of each fruit
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price'].toStringAsFixed(2)}");
  }
}

// Function to apply a discount to the price of each fruit
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double price = fruit['price'];
    double discountedPrice = price - (price * (discountPercentage / 100));
    fruit['price'] = discountedPrice;
  }
}
