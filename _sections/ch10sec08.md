---
chapter: 10
title: Overfitting
---
Consider the TV commercial example taht we saw while begininning this chapter. 
You might have noticed that we conviniently avoided the question, "Why did we 
chose to fit a line?". We could have used some other polynomial of degree 
$$n$$. Let's address this with a different example. You can find the source 
code for the example that we are about to discuss 
[here](https://github.com/akshaykhadse/DigitalCognitionBook/blob/code/01_linear_regression/02_overfitting.ipynb).

We begin by generating some data. To mimic sort of real-world data, we will 
generate a sine wave $$y = \sin(1.2 \pi x)$$ and then add a random noise to 
this signal. We generate 120 such samples. The following figure shows all 
these points against the true sine curve. 
![]({{ "/assets/images/overfitting_data.png" | relative_url }}){:width="80%" height="80%"}

Next, we reserve 30% of those samples for testing our model while we use rest 
of the samples for training a polynomial model. Let's fit a ploynomial with 
degrees 5 and 25.
![]({{ "/assets/images/overfitting_polynomial.png" | relative_url }}){:width="80%" height="80%"}
You can observe that the ploynomial of degree 5 (shown in blue) is smoother 
than polynomial with degree 25 (shown in orange). The degree 5 polynomial does 
not pass through each and every point, it just manages to stay in between the 
points. The 25 degree polynomial is not smooth, however, it passes through 
some of the points points especially towards the end of the curve. If we 
choose a degree high enough, we can find a polynoial which passes through each 
point. For example, see the following:
![]({{ "/assets/images/overfitted_curve.png" | relative_url }}){:width="80%" height="80%"}

But what happens to errors for different polynomial models? Well, let's plot 
these
![]({{ "/assets/images/overfitting_errors.png" | relative_url }}){:width="80%" height="80%"}
Observe that the train error and test error both decrease upto polynomial 
model of degree 5. The test error is minimum for this polynomial. If we fit 
polynomial models with higher degrees, then the train error keeps on 
decreasing. However, the test error starts to increase. This means that the 
training process is begining to give us models that fail to generalise well 
on unseen data. In other words, the training algorithm is focussing on fitting 
all training points on the curve instead of finding a curve that generalises 
the behavior over new data. This is called overfitting. It should be noted 
that, the aim of training algorithm should not be to give a model that has 0% 
error. It should concerntrate on finding a sweet spot where both train and 
test errors are small enough. Thus, we should keep on increasing the model 
complexity until both the train and test errors decrease. (In this case, 
degree of polynomial represents the model complexity. More the degree of 
polynomial, greater the model complexity). We should stop when the test error 
starts increasing and choose a model which results in minimum test error.

While we're on the subject, let's take a look at what happens to the 
magintudes of the weights of our predicted model. We plot the maginitude (also 
known as $$\mathcal{L}_2$$ norm) of vector $$w$$ against the degree of 
polynomial
![]({{ "/assets/images/overfitting_weights.png" | relative_url }}){:width="80%" height="80%"}
You can see that, as we increase the model complexity, the magnitude of 
weights goes on increasing. Thus, if we want the model complexity to not 
increase unnecessarily (to prevent overfitting), we should limit the magintude 
of weights. This restriction or shrinking of the model weights is called as 
regularization.