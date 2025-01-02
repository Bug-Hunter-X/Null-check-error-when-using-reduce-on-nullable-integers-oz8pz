```dart
List<int?> nullableNumbers = [1, 2, null, 4, 5];

// Solution 1: Using fold with null handling
int? nullableSumFold = nullableNumbers.fold<int?>(0, (sum, element) => sum! + (element ?? 0));
print("Sum using fold: $nullableSumFold");

// Solution 2: Using a conditional operator
int? nullableSumConditional = nullableNumbers.reduce((a, b) => a == null || b == null ? 0 : a + b);
print("Sum using conditional operator: $nullableSumConditional");
```