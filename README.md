# Proof of Concept: Reporting a Bug - Inconsistent Behavior Between Name Cases

## Issue:

Inconsistent behavior between name cases when compiling contracts in Solidity via forge.

### Result of `forge build --sizes`:

| Contract       | Size (kB) | Margin (kB) |
| -------------- | --------- | ----------- |
| Counter        | 0.247     | 24.329      |
| Counter2       | 0.247     | 24.329      |
| Counter4       | 0.247     | 24.329      |
| StdInvariant   | 2.038     | 22.538      |
| StdStyle       | 0.086     | 24.49       |
| console        | 0.086     | 24.49       |
| console2       | 0.086     | 24.49       |
| stdError       | 0.591     | 23.985      |
| stdJson        | 0.086     | 24.49       |
| stdMath        | 0.086     | 24.49       |
| stdStorage     | 0.086     | 24.49       |
| stdStorageSafe | 0.086     | 24.49       |

### Compilation Details:

1. Counter.sol is imported in Counter.t.sol and is thus compiled :smile:
2. Counter2.Sol is imported in Counter2.t.sol and is thus compiled :smile:
3. **Counter3.Sol exists in src but is not compiled! :disappointed:**
4. Counter4.sol exists in src and is compiled :smile:

As you can see, the file extension seems to matter when they are not imported. No error or warning message is shown, and the affected files are silently left out of compilation.

This behavior is also consistent in script or test folder.
