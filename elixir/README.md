# Algorithms - Elixir Implementation

This project contains Elixir implementations of various algorithms and data structures using **Elixir 1.15+**.

## 🚀 Getting Started

### Prerequisites

- Elixir 1.15 or higher
- Erlang/OTP 26+

### Running Tests

```bash
# From the elixir directory
mix test

# Run tests with detailed output
mix test --trace

# Run a specific test file
mix test test/algorithms/arrays/reverse_string_test.exs

# Run tests with coverage
mix test --cover
```

### Interactive Development

```bash
# Start interactive Elixir shell with project loaded
iex -S mix

# Then try the algorithms
iex> Algorithms.Arrays.ReverseString.reverse_string(["h", "e", "l", "l", "o"])
["o", "l", "l", "e", "h"]
```

### Building the Project

```bash
# Compile the project
mix compile

# Clean and recompile
mix clean && mix compile
```

## 📁 Project Structure

```
elixir/
├── mix.exs                                       # Mix configuration
├── lib/algorithms/                               # Implementation code
│   └── arrays/
│       ├── reverse_string.ex
│       ├── sorted_squares.ex
│       ├── longest_subarray_with_sum.ex
│       └── maximum_average_subarray.ex
└── test/algorithms/                              # Test code
    └── arrays/
        ├── reverse_string_test.exs
        ├── sorted_squares_test.exs
        ├── longest_subarray_with_sum_test.exs
        └── maximum_average_subarray_test.exs
```

## 🎯 Implemented Algorithms

### Arrays

| Algorithm | Difficulty | LeetCode | Module |
|-----------|-----------|----------|--------|
| Reverse String | Easy | #344 | `Algorithms.Arrays.ReverseString` |
| Squares of a Sorted Array | Easy | #977 | `Algorithms.Arrays.SortedSquares` |
| Longest Subarray With Sum ≤ k | Medium | - | `Algorithms.Arrays.LongestSubarrayWithSum` |
| Maximum Average Subarray I | Easy | #643 | `Algorithms.Arrays.MaximumAverageSubarray` |

## 💡 Code Style

- Comprehensive module documentation with `@moduledoc`
- Function documentation with `@doc` and examples
- Type specifications with `@spec`
- Time and space complexity documented
- Multiple test cases for each algorithm
- Follows Elixir naming conventions (snake_case)

## 🧪 Testing

This project uses **ExUnit** for testing. Each algorithm has comprehensive test coverage with multiple test cases including edge cases.

## 🎓 Learning Notes

Elixir implementations showcase:
- Functional programming patterns
- Immutable data structures
- Pattern matching and recursion
- Enum module for list operations
- Tail-call optimization where applicable

## 📚 Documentation

For detailed problem descriptions and approaches, see the [documentation](../docs/).

## 🔧 Generating Documentation

```bash
# Generate HTML documentation
mix docs

# Open documentation in browser
open doc/index.html
```

