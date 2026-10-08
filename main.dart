/* Pizza Order Program 
   Ask user to enter their order 
   then calculate the total user payment*
*/

import 'dart:io';

void main() {
  String pizzaSize = "";
  int pizzaQuantity = 0;

  print("Pizza Price: \"Small: 5 USD, Medium: 7 USD, Large: 10 USD");

  while (pizzaSize.toLowerCase() != "small" && pizzaSize.toLowerCase() != "medium" && pizzaSize.toLowerCase() != "large") {
    print("Please enter your pizza size (small, medium, or large): ");
    pizzaSize = stdin.readLineSync()!;

    if (pizzaSize.toLowerCase() != "small" && pizzaSize.toLowerCase() != "medium" && pizzaSize.toLowerCase() != "large") {
      print("Invalid pizza size entered. Please try again.");
    }
  }


  while (pizzaQuantity <= 0) {
    print("How many pizzas do you want of $pizzaSize?");
    pizzaQuantity = int.tryParse(stdin.readLineSync()!) ?? 0;

    if (pizzaQuantity <= 0) {
      print("Invalid pizza quantity entered. Please try again.");
    }
  }

  switch (pizzaSize.toLowerCase()) {
    case "small":
      print("Your total payment is: ${pizzaQuantity * 5} USD");
      break;
    case "medium":
      print("Your total payment is: ${pizzaQuantity * 7} USD");
      break;
    case "large":
      print("Your total payment is: ${pizzaQuantity * 10} USD");
      break;
    default:
      print("Invalid pizza size or pizza number entered.");
  }
}
