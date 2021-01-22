---
part: 2
chapter: 01
title: Maximum A-Posteriori Estimate
---
Consider the example of coin toss which we saw earlier. Let's say Suresh gets himself a new coin from the mint. The coin has one face heads and other tails. Since coin is brand new, he believes that the coin is fair. So, getting heads and tails is equally likely i.e. $$P(H) = P(T) = 0.5$$.

Now, Suresh tosses the coins four times and he observes heads all four times. What is the probability of getting heads in the next toss? Well, if we were looking at the maximum likelihood estimate, then the answer would be $$\hat{P}(H) = 4/4 = 1$$.

Does this mean that tails is improbable? We know that it would be practically possible to get heads all the time only if both the faces of the coin were heads. This is clearly not true for our coin, it has heads on one face and tails on the other. This means that Suresh's belief that the coin is fair is not correct. However, it does not mean that the tails is improbable. So, is there a way through which Suresh can update his belief that $$\hat{p} = 0.5$$ by incorporating the information he received by tossing coin four times?

Yes. Let me introduce you to Bayesian Inference. Let's say that the $$X$$ is governed by a distribution whose parameter is $$\theta$$. Under the Bayesian Inference, you assume that $$\theta$$ in itself is another random variable. The you can incorporate your belief about $$\theta$$ via assuming a probability distribution that governs $$\theta$$. We will represent this distribution via a PDF or PMF $$g(\theta)$$. The probability distribution of $$\theta$$ which incorporates your belief $$g(\theta)$$ is called prior because this denotes your belief about $$\theta$$ prior to observing evidence or data $$\mathcal{D}$$.

As we saw with Suresh's coin toss example, we may encounter some evidence or data $$\mathcal{D}$$ which can be used to update our original belief. This evidence can be incorporated in a distribution denoted by $$f(x \mid \theta)$$. No fancy names for this one.

Then we can conclude the following from the Bayes' rule

$$
f(\theta \mid x) = \frac{f(x \mid \theta) g(\theta)}{\int_{\Theta} f(x \mid t) g(t) dt}
$$

where $$\Theta$$ is the domain of function $$g(\theta)$$. The set of values over which a function is defined is called domain of that function. In other words, $$\Theta$$ denotes range of $$\theta$$ over which function $$g(\theta)$$ is defined.

In this equation, the denominator does not depend on the $$\theta$$. Therefore, it is constant. We can see that maximizing $$f(\theta \mid x)$$ is same as maximizing $$f(x \mid \theta) g(\theta)$$. Thus we can write

$$f(\theta \mid x) \propto f(x \mid \theta) g(\theta)$$

In this equation $$f(\theta \mid x)$$ is known as posterior distribution of $$\theta$$.

The maximum a-posteriori estimate is the value of $$\theta$$ which maximizes the posterior distribution of $$\theta$$. This is given as

$$
\begin{align}
\hat{\theta}_{MAP} &= \underset{\theta}{\operatorname{argmax}} f(\theta \mid x)\\
&= \underset{\theta}{\operatorname{argmax}} f(x \mid \theta) g(\theta)
\end{align}
$$

Observe that the MAP estimate of $$\theta$$  coincides with the ML estimate when the prior $$g$$ is uniform (that is, a constant function).

Let's get back to Suresh. Coin toss is an example of Binomial distribution. Let probability of getting heads in a single coin toss be $$p$$. The probability of observing $$h$$ heads in $$n$$ tosses is given by 

$$f(h \mid p) = {}^{n}C_{h} p^h (1-p)^{n-h}$$

Assume that $$p$$ is also a random variable. We will model the prior of $$p$$ as a Beta distribution (because Beta is the conjugate prior of Binomial. This will be discussed later when explaining conjugate priors) with parameter $$\alpha = 10$$ and $$\beta = 10$$. This is shown in the following figure

![]({{ "/assets/images/beta_distribution_10_10.png" | relative_url }}){:width="80%" height="80%"}

Observe that this mound shaped curve has peak at $$x = 0.5$$ and looks quite similar to the Gaussian distribution. Thus, this distribution incorporates the Suresh's belief that the coin is fair. Thus,

$$g(p) = \frac{p^{\alpha-1} (1-p)^{\beta-1}}{\mathcal{B}(\alpha,\beta)}$$

Now, the posterior distribution $$f(p \mid x)$$ is given by

$$
\begin{align}
f(p \mid h) &= \frac{f(h \mid p) g(p)}{ \int_{0}^{1} f(h \mid p) g(p) dp} \\
&= \frac{ {}^{n}C_{h} p^h (1-p)^{n-h} \times \frac{p^{\alpha-1} (1-p)^{\beta-1}}{\mathcal{B}(\alpha,\beta)}}{\displaystyle \int_{0}^{1} {}^{n}C_{h} p^h (1-p)^{n-h} \times \frac{p^{\alpha-1} (1-p)^{\beta-1}}{\mathcal{B}(\alpha,\beta)} dp}\\
&= \frac{p^h (1-p)^{n-h} \times p^{\alpha-1} (1-p)^{\beta-1}} {\displaystyle \int_{0}^{1} p^h (1-p)^{n-h} \times p^{\alpha-1} (1-p)^{\beta-1} dp}\\
&= \frac{p^{\alpha + h - 1} (1-p)^{\beta + n - h -1}} {\displaystyle \int_{0}^{1} p^{\alpha + h - 1} (1-p)^{\beta + n - h -1} dp} \\
&= \frac{p^{\alpha + h - 1} (1-p)^{\beta + n - h -1}} {\mathcal{B}(\alpha + h, \beta + n - h)} \\
&= \operatorname{Beta}(\alpha + h, \beta + n - h)
\end{align}
$$

Now, the Maximum A-Posteriori estimate is,

$$
\begin{align}
\hat{p}_{\tiny{MAP}} &= \underset{p}{\operatorname{argmax}} f(p \mid h)\\
&= \underset{p}{\operatorname{argmax}} \frac{p^{\alpha + h - 1} (1-p)^{\beta + n - h -1}} {\mathcal{B}(\alpha + h, \beta + n - h)}\\
&= \operatorname{mode}(\operatorname{Beta}(\alpha + h, \beta + n - h))\\
&= \frac{\alpha + h -1}{\alpha + \beta + n -2}
\end{align}
$$

So, for Suresh, the MAP estimate of probability of getting heads is $$\frac{10+4-1}{10+10+4-2} = 0.6$$

Please notice that the probability of getting heads is 0.6 as opposed to 1 which we found out from MLE. This explains that the tails is not improbable. Thus, MAP estimate is much more reasonable than the MLE because it incorporates our original belief that the coin is fair. 
