---
chapter: 10
title: Maximum Likelihood Estimate
---
Suresh tosses a coin 1000 times and he observes heads 400 times.

This is a stochastic process that takes discrete values viz. heads (1) or tails 
(0). In such cases, we can calculate the probability of observing a particular 
set of outcomes by making suitable assumptions about the underlying stochastic 
process. For example, in our case, probability of coin landing heads is $$p$$ 
and that coin tosses are independent.

Let's denote the observed outcomes by $$O$$ and the set of parameters that 
describe the stochastic process as $$\theta$$. Our observed outcome is 400 
heads and 600 tails. The process of tossing a coin is governed only by the 
probability $$p$$. Hence, $$\theta = p$$. Thus, when we speak of probability 
we want to calculate $$P(O \mid \theta)$$. In other words, given specific 
values for $$\theta$$, $$P(O \mid \theta)$$ is the probability that we would 
observe the outcomes represented by $$O$$.

However, when we model a real life stochastic process, we often do not know 
$$\theta$$. We simply observe $$O$$ and the goal then is to arrive at an 
estimate for $$\theta$$ that would be a plausible choice given the observed 
outcomes $$O$$. We know that given a value of $$\theta$$ the probability of 
observing $$O$$ is $$P(O \mid \theta)$$. Thus, a 'natural' estimation process 
is to choose that value of $$\theta$$ that would maximize the probability that 
we would actually observe $$O$$. In other words, we find the parameter values 
$$\theta$$ that maximize the following function:

$$L(\theta \mid O) = P(O \mid \theta)$$

$$L(\theta \mid O)$$ is called the likelihood function. Notice that by 
definition the likelihood function is conditioned on the observed $$O$$ and 
that it is a function of the unknown parameters $$\theta$$.

Suresh is about to toss the coin again and he would like to know the 
probability of getting a heads in this toss. We can estimate the probability 
of observing heads as

$$P(Heads) = \frac{400}{1000} = 0.4 = \hat{\theta}_{\tiny{MLE}}$$

However, it is important to note that we do not know the exact probability of 
getting the heads $$\theta$$. $$\hat{\theta}_{\tiny{MLE}}$$ is an estimate 
that maximises the likelihood of observing the outcomes that we already saw. 
In other words, it the value of the parameter which is the most reasonable 
explantion for our observations. 

It's all good for argument sake, but can we prove this theoritically?

We know that tossing a coin 1000 times is a Bernouli trial and the number of 
heads (denoted by random variable $$X$$) follows a Binomial distribution. 
Let's assume that $$\theta$$ is the probablity of getting a head in any single 
coin toss. Thus, probability of getting a tails in single toss will be 
$$(1-\theta)$$. Hence, the probability of getting $$k$$ heads in $$n$$ coin 
tosses is given by

$$P(X = k \mid \theta) = {}^{n}C_{k} \; \theta^{k}(1-\theta)^{n-k}$$

where

Now, we can formulate our maximum likelihood estimate as

$$
\begin{align}
\hat{\theta}_{\tiny{MLE}} &= \underset{\theta}{\operatorname{argmax}} L(\theta \mid X = k)\\
&=  \underset{\theta}{\operatorname{argmax}} P(X = k \mid \theta)\\
&=  \underset{\theta \in [0,1]}{\operatorname{argmax}} {}^{n}C_{k} \; \theta^{k}(1-\theta)^{n-k}
\end{align}
$$

Instead of maximizing the likelihood, we will maximise the log of likelihood. 
Since log is a monotonically increasing function, it preserves the location of 
maximas and minimas of the original function

$$
\begin{align}
LL(\theta \mid X = k) &= \log (L(\theta \mid X = k))\\
&= \log ({}^{n}C_{k} \; \theta^{k}(1-\theta)^{n-k})\\
&= \log ({}^{n}C_{k}) + k \log(\theta) + (n-k) \log(1-\theta)
\end{align}
$$

Therefore,

$$
\begin{align}
\hat{\theta}_{\tiny{MLE}} &= \underset{\theta}{\operatorname{argmax}} L(\theta \mid X = k)\\
&=  \underset{\theta}{\operatorname{argmax}} LL(\theta \mid X = k)\\
&=  \underset{\theta \in [0,1]}{\operatorname{argmax}} \log ({}^{n}C_{k}) + k \log(\theta) + (n-k) \log(1-\theta)
\end{align}
$$

Differentiating with respect to $$\theta$$,

$$
\begin{align}
\frac{d}{d \theta} LL(\theta \mid X = k) &= \frac{d}{d \theta} \log ({}^{n}C_{k}) + k \frac{d}{d \theta} \log(\theta) + (n-k) \frac{d}{d \theta} \log(1-\theta)\\
&= \frac{k}{\theta} - \frac{n-k}{1-\theta}
\end{align}
$$

For $$\theta$$ to be maximum,

$$
\frac{d}{d \theta} LL(\theta \mid X = k) = 0\\
\frac{k}{\theta} - \frac{n-k}{1-\theta} = 0\\
\frac{k}{\theta} = \frac{n-k}{1-\theta}\\
\theta = \frac{k}{n}
$$

Thus, the maximum likelihood estimator for $$\theta$$ is

$$\hat{\theta}_{\tiny{MLE}} = \frac{k}{n}$$

This is the same estimate which we calculated initially i.e. $$\hat{\theta}_{\tiny{MLE}} = \frac{400}{1000} = 0.4$$

## Continuous Random Variables

If the stochatistc process has a continous random variable as its outcome, 
then the situation is similar, with one important difference. We can no longer 
talk about the probability that we observed $$O$$ given $$\theta$$ because in 
the continuous case $$P(O \mid \theta)=0$$. Without getting into 
technicalities, the basic idea is as follows:

Denote the probability density function (pdf) associated with the outcomes 
$$O$$ as: $$f(O \mid \theta)$$. Thus, in the continuous case we estimate 
$$\theta$$ given observed outcomes $$O$$ by maximizing the following function:

$$L(\theta \mid O)=f(O \mid \theta)$$

Our use of the pdf instead of actual probability intutuively makes sense 
because if we compare probabilities of getting a small set of outcome e.g. 
$$P(300 \leq O \leq 301 \mid \theta)$$ instead of a particular outcome e.g. 
$$P(O = 300 \mid \theta)$$, then we can see that the probabilities are 
actually proportional to the value of pdf 
$$f((O_{max} + O_{min})/2 \mid \theta)$$.

In this situation, we cannot technically assert that we are finding the 
parameter value that maximizes the probability that we observe $$O$$ as we 
maximize the PDF associated with the observed outcomes $$O$$.

## Derivation of MLE
Suppose we observe $$n$$ samples. Let each sample be denoted by random 
variables $$X_i$$, $$X_2$$, ..., $$X_n$$. Its safe to assume that $$X_i$$'s 
are independent of each other i.e drawing a sample from the population does 
not affect the chances of getting any other sample. Each random variable is 
governed by a distribution which follows the probability mass function (in 
discrete random variables) or probability density function (in case of 
continous random variabes) $$f_{\theta}(x_i) = f(x_i \mid \theta)$$. This 
means that the distribution is governed by a parameter $$\theta$$. Such 
random variables are said to be independent and identically distributed 
(i.i.d).

Now, if we observe that $$X_i = x_i$$, $$X_2 = x_2$$, ..., $$X_n = x_n$$. 
Then, the probability of making this observation is given by a function 
$$f_{\thata}(x_1, x_2, ..., x_n)$$. This is known as joint probability mass 
function (for discrete random variables) and probability mass function (for 
continous random variables). It is given as

$$
\begin{align}
f_{\theta}(x_1, x_2, ..., x_n) &= f(x_1, x_2, ..., x_n \mid \theta)\\
&= \prod^{i=1}{n} f_{theta}(x_i)\\
\end{align}
$$

The likelihood function of $$\theta$$ is given by

$$
\begin{align}
L(\theta \mid \mathcal{D}) &= L(\theta \mid x_1, x_2, ..., x_n)\\
&= f_{\theta}(x_1, x_2, ..., x_n)\\
&= f(x_1, x_2, ..., x_n \mid \theta)\\
&= \prod^{i=1}{n} f_{theta}(x_i)
\end{align}
$$

Thus the maximum likihood extimator of $$\theta$$ is given by

$$
\begin{align}
\hat{\theta}_{\tiny{MLE}} = \underset{\theta}{\operatorname{argmax}} L(\theta \mid \mathcal{D})\\
&= \underset{\theta}{\operatorname{argmax}} \prod^{i=1}{n} f_{theta}(x_i)
\end{align}
$$
