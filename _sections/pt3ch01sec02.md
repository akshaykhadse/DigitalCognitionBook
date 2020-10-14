---
part: 3
chapter: 01
title: Least Squares Solution
---
*The following discussion relies on matrix calculus. If you are not comfortable 
with matrix calculus, you may want to take a look at 
[this article](https://atmos.washington.edu/~dennis/MatrixCalculus.pdf) on the 
subject.*

We can write the sum of squares error in matrix form as

$$E(f(\phi(x), w), \mathcal{D}) = (y - \phi w)^\intercal(y - \phi w)$$

You might have noticed that we used $$\phi$$ instead of $$\phi(x)$$. We will 
abuse the notations to make the further mathematical treatment simple to 
understand.

Then we can find the parameters $$\hat{w}$$

$$\hat{w} = \underset{w}{(y - \phi w)^\intercal(y - \phi w)}$$

Differentiating $$E$$ with respect to $$w$$,

$$\frac{\partial{E}}{\partial{w}} = -2 \phi^\intercal (y - \phi w)$$

$$\frac{\partial^2 E}{\partial{w}\partial{w^\intercal}} = \phi^\intercal \phi$$

If $$\phi$$ has full column rank, $$\phi^\intercal \phi$$ is positive definite, we set 
the first derivative to zero

$$ \phi^\intercal (y - \phi w) = 0 $$

To obtain the solution

$$ \hat{w} = (\phi^\intercal \phi)^{-1} \phi^\intercal y $$
