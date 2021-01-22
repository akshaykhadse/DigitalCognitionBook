---
part: 3
chapter: 01
title: Probabilistic Interpretation
---
From the discussion so far, we know that $$y$$ is a function of $$\phi(x)$$. 
But, this function is only approximate, in the sense that it does not give us 
the exact value of $$y_i$$'s. We can see in the TV commercials example that 
the deviations $$y_1-\hat{y_1}$$, $$y_2-\hat{y_2}$$, ..., $$y_n-\hat{y_n}$$ 
appear to be random i.e. they do not seem to follow any relation. Let's denote 
this deviation by $$\varepsilon_1$$, $$\varepsilon_1$$, $$\varepsilon_2$$, 
..., $$\varepsilon_n$$. Then, it is reasonable to assume that each 
$$\varepsilon_i$$ is a random variable which follows a Gaussian distribution 
with mean 0 and variance $$\sigma^2$$ denoted as $$\mathcal{N}(0, \sigma^2)$$. 
Then,

$$
y_i - \hat{y_i} = \varepsilon_i\\
y_i = \hat{y_i} + \varepsilon_i\\
y_i = w^\intercal \phi(x_i) + \varepsilon_i
$$

This means that each $$y_i$$ follows a Gaussian distribution with mean 
$$\mu = w^\intercal \phi(x_i)$$ and variance $$\sigma^2$$. This can be denoted 
as $$y_i ~ \mathcal{N}(\mu, \sigma^2)$$. Thus, we can describe this 
observation as the following probabilistic model

$$
\begin{align}
P(y_i|w, x_j, \sigma^2) &= \mathcal{N}(w^\intercal \phi(x_i), \sigma^2)\\
&= \frac{1}{\sqrt{2 \pi}\sigma} e^{-\frac{1}{2}(\frac{y_i-w^\intercal\phi(x_i)}{\sigma})^2}
\end{align}
$$

$$y$$ is a vector of elements $$y_1$$, $$y_2$$, ..., $$y_n$$. Moreover, in the 
dataset $$\mathcal{D}$$, picking a sample $$(x_i, y_i)$$ from the population 
does not affect the chances of any other point ending up in the dataset. In 
other words, $$y_1$$, $$y_2$$, ..., $$y_n$$ are independent random variables. 
Since, each $$y_i \sim \mathcal{N}(\mu, \sigma^2)$$, they are identically 
distributed. Thus,

$$P(y|w, x, \sigma^2) = \prod_{i = 1}^{n} P(y_i|w, x_j, \sigma^2)$$

and

$$\mathbb{E}(y(w, x)) = \phi(x) w$$

We can formulate the regression problem as:\
Given the dataset $$\mathcal{D}$$, find the most likelihood estimate 
$$\hat{w}_{\tiny{MLE}}$$. In other words, find an estimate 
$$\hat{w}_{\tiny{MLE}}$$ which is most likely to produce the $$y$$ that we 
observed in $$\mathcal{D}$$.

The likelihood of observing data $$\mathcal{D}$$ is denoted by 
$$L(w \mid \mathcal{D})$$. It is give as

$$
\begin{align}
L(w \mid \mathcal{D}) &= P(\mathcal{D} \mid w)\\
&= P(y \mid x, w, \sigma^2)
&= \prod_{i = 1}^{n} \frac{1}{\sqrt{2 \pi}\sigma} e^{-\frac{1}{2}(\frac{y_i-w^\intercal\phi(x_i)}{\sigma})^2}
\end{align}
$$

Quite tedious expression, huh? Let's take natural logs of both sides

$$
\begin{align}
\ln(L(w \mid \mathcal{D})) &= \ln(\prod_{i = 1}^{n} \frac{1}{\sqrt{2 \pi}\sigma} e^{-\frac{1}{2}(\frac{y_i-w^\intercal\phi(x_i)}{\sigma})^2})\\
LL(w \mid \mathcal{D}) &= \sum_{i=1}^{n} \left( ln \left( \frac{1}{\sqrt{2 \pi}\sigma} \right) -\frac{1}{2} \left( \frac{y_i-w^\intercal\phi(x_i)}{\sigma} \right)^2 \right)\\
&= \sum_{i=1}^{n} ln \left( \frac{1}{\sqrt{2 \pi \sigma^2}} \right) - \sum_{i=1}^{n} \frac{1}{2 \sigma^2} (y_i-w^\intercal\phi(x_i))^2\\
&= -\frac{n}{2} ln(2 \pi \sigma^2) - \frac{1}{2 \sigma^2} \sum_{i=1}^{n} (y_i-w^\intercal\phi(x_i))^2
\end{align}
$$

$$LL(w \mid \mathcal{D})$$ is called the log likelihood function. Since log is 
a monotonically increasing function, it preserves the location of maximums and 
minimums when log is used a transform. Hence, maximizing 
$$L(w \mid \mathcal{D})$$ is equivalent to maximizing 
$$LL(w \mid \mathcal{D})$$. Maximizing log likelihood function instead of 
likelihood function is known as the log optimization trick. The log likelihood 
function can also be expressed in terms of sum of squares error 
$$E(f(\phi(x), w), \mathcal{D})$$ as

$$
\begin{align}
LL(w \mid \mathcal{D}) &= -\frac{n}{2} ln(2 \pi \sigma^2) - \frac{1}{2 \sigma^2} \sum_{i=1}^{n} (y_i-w^\intercal\phi(x_i))^2\\
&= -\frac{n}{2} ln(2 \pi \sigma^2) - \frac{1}{2 \sigma^2} E(f(\phi(x), w), \mathcal{D})
\end{align}
$$

Thus, maximizing $$LL(w \mid \mathcal{D})$$ is equivalent to minimizing 
$$E(f(\phi(x), w), \mathcal{D})$$ since 
$$LL(w \mid \mathcal{D}) = - c_1 E(f(\phi(x), w), \mathcal{D}) + c_2$$. 
Therefore, maximizing likelihood function $$L(w \mid \mathcal{D})$$ is 
equivalent to minimizing the sum of squares error 
$$E(f(\phi(x), w), \mathcal{D})$$.

The maximum likelihood estimator is given by

$$\hat{w}_{\tiny{MLE}} = \underset{w}{\operatorname{argmax}} P(\mathcal{D} \mid w)$$

This can be formulated as a minimization problem

$$\hat{w}_{\tiny{MLE}} = \underset{w}{\operatorname{argmin}} E(f(\phi(x), w), \mathcal{D})$$

This is the same minimization problem that we solved for getting the least 
squares solution. Hence, finding maximum likelihood estimator is same as the 
least squares solution of the linear regression problem. Therefore, most 
likelihood estimate is

$$\hat{w}_{\tiny{MLE}} = (\phi^\intercal \phi)^{-1} \phi^\intercal y$$
