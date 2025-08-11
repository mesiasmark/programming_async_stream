// part1_future.dart

// Function that returns a message after 2 seconds
Future<String> getMessage() async {
  return await Future.delayed(
    Duration(seconds: 2),
    () => "Hello from Future after 2 seconds!",
  );
}

// Async main function
Future<void> main() async {
  print("Waiting for the message...");
  String message = await getMessage();
  print(message);
}
