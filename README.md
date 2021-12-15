# optimization-algorithms
Implementation of minimum-approximation algorithms for single/multi-variable functions

These four implementations are done in the context of the first project in the related subject "Optimization Techniques".
The methods refering to single variable functions are:
- [Bisection Method](https://en.wikipedia.org/wiki/Bisection_method)
- [Derivative Bisection Method](https://en.wikipedia.org/wiki/Fibonacci_search_technique)
- [Golden Section Method](https://en.wikipedia.org/wiki/Golden-section_search)

The methods solving the minimum approximation problem for multi-variable functions are:
- Newton's Method
- Steepest Descent
- Levenberg-Marquardt Method

For method-related parameter calculation, the Armijo rule was used as well.

The third project 'optimizationWithRestrictions' addresses the problem of minimum approximation in multivariable functions
with added restrictions to the initial problem. The algorithm used is a modified version of the 
- Steepest Descent

But this time using projection Theorems that enables us to remain inside the rerstricted set of values.
