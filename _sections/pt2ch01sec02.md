---
part: 2
chapter: 01
title: Beta Distribution
---
The beta distribution is a family of continuous probability distributions defined on the interval $$[0, 1]$$ parameterized by two positive shape parameters, denoted by $$\alpha$$ and $$\beta$$, that control the shape of the distribution.

This is denoted as $$X \sim \operatorname{Beta}(\alpha, \beta)$$.

The probability density function of Beta distribution is given by 

$$f(x \mid \alpha, \beta) = \frac{x^{\alpha-1}(1-x)^{\beta-1}}{\mathcal{B}(\alpha, \beta)}$$

Here, $$\mathcal{B}(\alpha, \beta)$$ is called the Beta function and it is given by

$$
\begin{align}
\mathcal{B}(\alpha,\beta) &= \int_{0}^{1} x^{\alpha-1}(1-p)^{\beta -1} dx\\
&= \frac{\Gamma(\alpha) \Gamma(\beta)}{\Gamma(\alpha + \beta)}
\end{align}
$$

where, $$\Gamma(n) = (n-1)!$$ for all $$n \in \mathbb{Z}^{+}$$.

Let's see the effect of $$\beta$$ on the PDF
![Beta Distribution]({{ "/assets/images/beta_dustribution_beta.gif" | relative_url }}){:width="80%" height="80%"}

The effect of $$\alpha$$ and $$\beta$$ on the PDF is summarized in the following image
![Beta Distribution]({{ "/assets/images/beta_distribution.svg" | relative_url }}){:width="80%" height="80%"}