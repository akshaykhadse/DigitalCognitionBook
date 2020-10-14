---
part: 3
chapter: 01
title: Geometric Interpretation of Least Squares Solution
---
![Geometric interpretation of least squares solution]({{ "/assets/images/geometric_interpretation.svg" | relative_url }}){:width="80%" height="80%"}

In the above figure, the $$\phi_1(x)$$, $$\phi_2(x)$$, ..., $$\phi_p(x)$$ are 
the vectors corresponding to each column of $$\phi(x)$$. The shaded blue 
region is the hyperplane which contains the vectors $$\phi_1(x)$$, 
$$\phi_2(x)$$, ..., $$\phi_p(x)$$. In other words, the shaded blue region is 
the column space of $$\phi(x)$$.

The predicted values $$\hat{y}$$ are given by

$$\hat{y} = \phi \hat{w}$$

$$\hat{y}$$ is a linear combination of columns of $$\phi$$, hence $$\hat{y}$$ 
lies in the same hyperplane as $$\phi_1(x)$$, $$\phi_2(x)$$, ..., 
$$\phi_p(x)$$.

$$y - \hat{y}$$ is the vector difference of the estimated values 
$$\hat{y}_i$$'s and the actual observations $$y_i$$'s. The maginitude of this 
vector is given by

$$\lvert y - \hat{y} \rvert = \sum_{i = 1}^{n} (y_i - \hat{y}_i)^2$$

The maginitude of $$y - \hat{y}$$ is same as the sum of squared error. This 
maginitude will be minimum when the vector $$y - \hat{y}$$ is perpendicular to 
the hyperplane containing $$\phi_1(x)$$, $$\phi_2(x)$$, ..., $$\phi_p(x)$$. In 
other words, the error will be minimum when $$(y - \hat{y}) \perp \phi_1(x)$$, 
$$(y - \hat{y}) \perp \phi_2(x)$$, ..., $$(y - \hat{y}) \perp \phi_p(x)$$. 
This can be exressed in terms of dot product as:

$$
(y - \hat{y})^\intercal \phi_1(x)\\
(y - \hat{y})^\intercal \phi_2(x)\\
. \\
. \\
. \\
(y - \hat{y})^\intercal \phi_p(x)\\
$$

In matrix form,

$$(y - \hat{y})^\intercal \phi = \bar{0}$$

Substituting value of $$\hat{y}$$,

$$
(y - \phi \hat{w})^\intercal \phi = (\bar{0})^\intercal\\
y^\intercal \phi - \hat{w}^\intercal \phi^\intercal \phi = (\bar{0})^\intercal\\
\phi^\intercal y - \phi^\intercal \phi \hat{w} = \bar{0}\\
\phi^\intercal \phi \hat{w} = \phi^\intercal y
$$

Thus,

$$\hat{w} = (\phi^\intercal \phi)^{-1} \phi^\intercal y$$

This is same result which we obtained earlier.

It is important to note that $$\phi^\intercal \phi$$ is invertible only when $$\phi$$ 
has full column rank.
