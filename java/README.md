# Algorithms - Java Implementation

This project contains Java implementations of various algorithms and data structures using **Java 21**.

## 🚀 Getting Started

### Prerequisites

- Java 21 or higher
- Maven 3.6+

### Running Tests

```bash
# From the java directory
mvn test

# Run tests with output
mvn test -X

# Run a specific test class
mvn test -Dtest=ReverseStringTest

# Run tests and see coverage
mvn clean test
```

### Building the Project

```bash
# Compile the project
mvn compile

# Clean and build
mvn clean install
```

## 📁 Project Structure

```
java/
├── pom.xml                                    # Maven configuration
└── src/
    ├── main/java/algorithms/                  # Implementation code
    │   └── arrays/
    │       ├── ReverseString.java
    │       ├── SortedSquares.java
    │       ├── LongestSubarrayWithSum.java
    │       └── MaximumAverageSubarray.java
    └── test/java/algorithms/                  # Test code
        └── arrays/
            ├── ReverseStringTest.java
            ├── SortedSquaresTest.java
            ├── LongestSubarrayWithSumTest.java
            └── MaximumAverageSubarrayTest.java
```

## 🎯 Implemented Algorithms

### Arrays

| Algorithm | Difficulty | LeetCode | Class |
|-----------|-----------|----------|-------|
| Reverse String | Easy | #344 | `ReverseString.java` |
| Squares of a Sorted Array | Easy | #977 | `SortedSquares.java` |
| Longest Subarray With Sum ≤ k | Medium | - | `LongestSubarrayWithSum.java` |
| Maximum Average Subarray I | Easy | #643 | `MaximumAverageSubarray.java` |

## 💡 Code Style

- All classes include comprehensive JavaDoc comments
- Time and space complexity documented
- Multiple test cases for each algorithm
- Follows Java naming conventions (PascalCase for classes)

## 🧪 Testing

This project uses **JUnit 5** for testing. Each algorithm has comprehensive test coverage with multiple test cases including edge cases.

## 📚 Documentation

For detailed problem descriptions and approaches, see the [documentation](../docs/).

