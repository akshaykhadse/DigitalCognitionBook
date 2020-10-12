---
chapter: 10
title: Least Squares Solution
---
We can write the sum of squares error in matrix form as

$$E(f(\phi(x), w) = (y - \phi w)^T(y - \phi w)$$

You might have noticed that we used $$\phi$$ instead of $$\phi(x)$$. We will 
abuse the notations to make the further mathematical treatment simple to 
understand.

Then we can find the parameters $$\hat{w}$$

$$\hat{w} = \underset{w}{(y - \phi w)^T(y - \phi w)}$$

Differentiating $$E$$ with respect to $$w$$,

$$\frac{\partial{E}}{\partial{w}} = -2 \phi^T (y - \phi w)$$

$$\frac{\partial^2 E}{\partial{w}\partial{w^T}} = \phi^T \phi$$

If $$\phi$$ has full column rank, and hence $$\phi^T \phi$$ is positive 
definite, we set the first derivative to zero

$$ \phi^T (y - \phi w) = 0 $$

To obtain the solution

$$ \hat{w} = (\phi^T \phi)^{-1} \phi^T y $$
