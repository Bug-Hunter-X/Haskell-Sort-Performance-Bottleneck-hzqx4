# Haskell Sort Performance Bottleneck

This repository demonstrates a potential performance issue when using `Data.List.sort` in Haskell with large input lists.  The `Data.List.sort` function uses mergesort, which has a time complexity of O(n log n) and can become computationally expensive and memory-intensive for very large lists.

The `bug.hs` file contains a simple example that showcases the issue. The `bugSolution.hs` file offers a potential solution utilizing a more memory-efficient sorting approach when dealing with extremely large datasets. 

## How to Reproduce

1. Clone this repository.
2. Compile and run `bug.hs`. Observe the execution time, particularly when increasing the size of the input list.
3. Run `bugSolution.hs` and compare the performance with `bug.hs` for larger datasets. 

## Solution

The primary solution is to carefully choose sorting algorithms according to the needs of your application.  For extremely large datasets, alternative sorting methods (not included in this example) may need to be considered.