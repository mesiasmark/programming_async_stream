// part2_error_handling.dart

// Function that simulates an error after 2 seconds
Future<String> simulateError() async {
  return await Future.delayed(
    Duration(seconds: 2),
    () {
      throw Exception("Something went wrong!");
    },
  );
}

// Main function with try/catch for error handling
Future<void> main() async {
  print("Starting error simulation...");

  try {
    String result = await simulateError();
    print(result); // Won’t execute if an error occurs
  } catch (e) {
    print("Caught an error: $e");
  }
}
