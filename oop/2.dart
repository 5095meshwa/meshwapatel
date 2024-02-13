import 'dart:io';

class Customer {
  int custId;
  String custName;
  String custContact;
  List<Map<String, dynamic>> custCart = [];

  Customer(this.custId, this.custName, this.custContact);
}

void main() {
  List<Customer> customers = [];

  while (true) {
    print("1. Add Customer");
    print("2. Add Product to Cart");
    print("3. Display Invoice");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    var choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter customer details:");
      stdout.write("Customer ID: ");
      var custId = int.parse(stdin.readLineSync()!);
      stdout.write("Customer Name: ");
      var custName = stdin.readLineSync()!;
      stdout.write("Customer Contact: ");
      var custContact = stdin.readLineSync()!;
      customers.add(Customer(custId, custName, custContact));
      print("Customer $custName added with ID: $custId");
    } else if (choice == 2) {
      stdout.write("Enter customer ID: ");
      var custId = int.parse(stdin.readLineSync()!);
      if (custId <= customers.length) {
        var customer = customers[custId - 1];
        stdout.write("Enter product ID: ");
        var proId = stdin.readLineSync()!;
        stdout.write("Enter product name: ");
        var proName = stdin.readLineSync()!;
        stdout.write("Enter product quantity: ");
        var proQty = int.parse(stdin.readLineSync()!);
        stdout.write("Enter product price: ");
        var proPrice = double.parse(stdin.readLineSync()!);
        customer.custCart.add({
          "pro_id": proId,
          "pro_name": proName,
          "pro_qty": proQty,
          "pro_price": proPrice
        });
      } else {
        print("Invalid customer ID.");
      }
    } else if (choice == 3) {
      stdout.write("Enter customer ID: ");
      var custId = int.parse(stdin.readLineSync()!);
      if (custId <= customers.length) {
        var customer = customers[custId - 1];
        displayInvoice(customer);
      } else {
        print("Invalid customer ID.");
      }
    } else if (choice == 4) {
      break;
    } else {
      print("Invalid choice. Please select a valid option.");
    }
  }
}

void displayInvoice(Customer customer) {
  var totalAmount = 0.0;
  for (var item in customer.custCart) {
    totalAmount += item["pro_qty"] * item["pro_price"];
  }

  var discount = 0.0;
  if (totalAmount >= 6500) {
    discount = totalAmount * 0.30;
  } else if (totalAmount >= 3500) {
    discount = totalAmount * 0.25;
  } else if (totalAmount >= 1500) {
    discount = totalAmount * 0.20;
  } else if (totalAmount >= 500) {
    discount = totalAmount * 0.10;
  }

  var finalAmount = totalAmount - discount;

  print("Customer ID: ${customer.custId}");
  print("Customer Name: ${customer.custName}");
  print("Customer Contact: ${customer.custContact}");
  print("Products Purchased:");
  for (var item in customer.custCart) {
    print(
        "Product ID: ${item['pro_id']}, Name: ${item['pro_name']}, Quantity: ${item['pro_qty']}, Price: ${item['pro_price']}");
  }
  print("Total Amount: $totalAmount");
  print("Discount Amount: $discount");
  print("Final Amount: $finalAmount");
  print("=" * 30);
}
