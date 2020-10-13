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

$$P(Heads) = \frac{400}{1000} = 0.4 = \hat{p}_{\tiny{MLE}}$$

However, it is important to note that we do not know the exact probability of 
getting the heads $$p$$. $$\hat{p}_{\tiny{MLE}}$$ is an estimate that maximises the 
likelihood of observing the outcomes that we already saw. In other words, it 
the value of the parameter which is the most reasonable explantion for our 
observations.

## Caveat: Continuous Random Variables

If the stochatistc process has a continous random variable as its outcome, 
then the situation is similar with one important difference. We can no longer 
talk about the probability that we observed $$O$$ given $$\theta$$ because in 
the continuous case $$P(O \mid \theta)=0$$. Without getting into technicalities
, the basic idea is as follows:

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
