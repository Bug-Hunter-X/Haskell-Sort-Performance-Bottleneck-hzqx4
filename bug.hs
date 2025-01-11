```haskell
import Data.List (sort)

main :: IO ()
main = do
  let numbers = [1, 2, 3, 4, 5]
  let sortedNumbers = sort numbers
  print sortedNumbers
```
This code snippet is seemingly simple, but it hides a potential issue. If the `numbers` list is very large, the `sort` function will take a significant amount of time and memory. This is because `Data.List.sort` uses mergesort, which has a time complexity of O(n log n).  While generally efficient, for extremely large lists, the performance can become problematic.  Furthermore, memory usage can become a concern as the list is copied during the sort operation.

This example may not exhibit the problem immediately, but scaling the input significantly (e.g., using `[1..10000000]`) would highlight the performance limitations.  This is especially important in situations where responsiveness is crucial and memory resources are constrained. 