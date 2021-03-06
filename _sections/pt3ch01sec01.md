---
part: 3
chapter: 01
title: Simple Linear Regression
---
Suppose we have a dataset $$\mathcal{D}$$ which contains examples 
$$(x_1, y_1)$$, $$(x_2, y_2)$$, $$(x_3, y_3)$$, ... $$(x_n, y_n)$$ where $$m$$ 
is the total number of examples.

Each $$x$$ is an input (also known as independent variable). And each $$y$$ is 
output (also known as dependent or target variable).

$$(x, y)$$ represents a single example. $$(x_i, y_i)$$ is the $$j^{th}$$ 
example where $$j$$ is index to the dataset.

Each $$x_i$$ has $$p$$ attributes $$\phi_1(x_i)$$, $$\phi_2(x_i)$$, ..., 
$$\phi_p(x_i)$$. $$\phi_i$$'s should be considered as a functions which when 
applied to any point $$x_j$$, gives the value of attribute $$\phi_i(x_j)$$. 
For example, we may encounter a sample $$(1.12, 14)$$ where $$x_i = 10$$. If 
an attribute is defined as $$\phi_j(x_i) = sin(x_i)$$, then 
$$\phi_j(1.12) = sin(1.12).

We define a new $$n \times (p+1)$$ matrix $$\phi(x)$$ or simply $$\phi$$ as

$$
\phi = 
\begin{bmatrix}
1 & \phi_1(x_1) & \phi_2(x_1) & ... & \phi_p(x_1)\\
1 & \phi_1(x_2) & \phi_2(x_2) & ... & \phi_p(x_2)\\
.\\
.\\
.\\
1 & \phi_1(x_n) & \phi_2(x_n) & ... & \phi_p(x_n)\\
\end{bmatrix}
$$

$$i^{th}$$ row of this matrix is represented as $$\phi(x_i)$$. Similarly, 
$$i^{th}$$ column of this matrix can be represented as $$\phi_i(x)$$. This is 
also known as $$i^{th}$$ feature of the dataset $$\mathcal{D}$$.

Let's also define a $$n \times 1$$ matrix $$y$$ as

$$
y = 
\begin{bmatrix}
y_1 \\
y_2 \\
. \\
. \\
. \\
y_n
\end{bmatrix}
$$

The general equation of linear regression model is

$$ y_i = w_0 + w_1 \phi_1(x_i) + w_2 \phi_2(x_i) + ... + w_p \phi_p(x_i) $$

where $$w_0$$ is the bias and $$w_1$$, $$w_2$$, ..., $$w_p$$ are weights. We 
can denote this by a vector $$w$$ as

$$
w = 
\begin{bmatrix}
w_0 \\
w_1 \\
w_2 \\
. \\
. \\
. \\
w_p
\end{bmatrix}
$$

Then the above equation in the matrix form can be written as

$$ y_i = w_1 ^ T \phi(x_i) $$

where

$$
\phi(x_i) =
\begin{bmatrix}
1 \\
\phi_1(x_i) \\
\phi_2(x_i) \\
. \\
. \\
. \\
\phi_p(x_i)
\end{bmatrix}
$$

The same equation can be written for all values of $$y$$ as

$$ y = \phi(x) w $$

The $$y$$ is linear combination of columns of matrix $$\phi$$ because 
$$i^{th}$$ column of $$\phi$$ is multiplied by $$w_i$$. But this does not mean 
that linear regression is naively linear. We can inject non-linearities via 
the features/basis functions $$\phi_i$$s. For example, we could have used a 
function $$\phi(x_i) = x_i^2$$ in the TV commercial example. To summarize, 
$$y$$ is linear in $$\phi$$ and $$w$$ but it may or may not be linear with 
respect to $$x$$.

## Regression Problem
Now we define the regression problem as:

Determine a function $$\hat{f}$$ such that $$\hat{f}(x)$$ is the best predictor 
(minimizes the error $$E(f, \mathcal{D})$$) of $$y$$ with respect to the data 
$$\mathcal{D}$$.

$$\hat{f} = \underset{f \in \mathcal{F}}{\operatorname{argmin}} E(f, \mathcal{D})$$

Here, $$f$$ is a function which belongs to a class of functions 
$$\mathcal{F}$$. For linear regression, $$\mathcal{F}$$ is class of linear 
functions i.e. $$f$$ is a linear function.

When we say best predictor, we must have a measure which we use to determine 
goodness of a function. The error function $$E$$ is a measure of deviation of 
predicted value $$\hat{y}$$ from the observed value $$y$$. Smaller the error, 
better the prediction function $$f$$. The error $$E$$ is a function of $$f$$ 
and data $$\mathcal{D}$$. A common error function is Sum of Squared Error. 
There are different types of linear regression based on what error function is 
minimized and what classes of functions are considered.

## Linear Regression Problem
If we consider the class of linear functions for $$f$$, then 
$$f(\phi(x), w) = \phi(x)w$$. We can rewrite the above problem as:

Determine parameters $$w$$ for the function $$f(\phi(x), w)$$ which minimizes 
the error function $$E(f(\phi(x), w), \mathcal{D})$$.

$$\hat{w} = \underset{w}{\operatorname{argmin}} E(f(\phi(x), w), \mathcal{D})$$

## Sum of Squared Error (SSE)
The sum of squares error is defined as follows:

$$E(f, \mathcal{D}) = \sum_{\mathcal{D}}^{} (y_i - f(x_i))^2$$

It measures the square of deviation of each example $$(x_i, y_i)$$ from the 
prediction $$\hat{y_i} = w^\intercal \phi(x_i)$$. Thus, it is a function of $$f$$ and 
data $$\mathcal{D}$$. This also known as Residual Sum of Squares (RSS).

This error is used to find a least square solution to linear regression 
problem.
