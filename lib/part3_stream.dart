// part3_stream.dart

// Stream function that emits numbers 1–5 with a 1-second delay
Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// Main function that listens to the stream and prints each value
Future<void> main() async {
  print("Starting stream...");

  await for (int number in numberStream()) {
    print("Received: $number");
  }

  print("Stream finished.");
}
