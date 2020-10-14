---
part: B
layout: chapter
chapter: 10
title: Linear Regression
---

Linear regression is concerned with modelling the relationship between 
dependent variable and independent variable.

Suppose a company would like to know how much it should spend on the 
commercials to achieve a certain amount of sales. It has the data regarding 
their previous investments for commercials and the resultant sales figures. To 
get a somewhat accurate estimate, the analysts in the company would like to 
understand the reationship between the sales and the investments into the TV 
commercials.

Let's establish the following notation:
- The amount invested into the TV commercials is denoted by $$x$$ because it 
  is the independent variable here.
- The sales figure during this period is denoted by $$y$$ because it is the 
  dependent variable.
- The company has data in form of n pairs like $$(x_i, y_i)$$ where $$i$$ is 
  the index.

Let's visualize the data via a scatter plot
![Scatter Plot: Sales vs TV]({{ "/assets/images/linear-regression1.png" | relative_url }})
We can clearly see a linear trend in this plot. If spending on TV commercials 
increases the sales figures seem to increase.

We describe a general linear relationship between $$x$$ and $$y$$ via the 
following equation:

$$y = \beta_0 + \beta_1 x$$

If we fit the this curve to the data, we get the following line:

$$y = 6.9748 + 0.0554x$$

Let's plot this line on our data
![Linear Regression Fit]({{ "/assets/images/linear-regression2.png" | relative_url }})
We can see that the line passes more or less through the middle of the data 
points.

You can refer the [linear regression notebook](https://github.com/akshaykhadse/DigitalCognitionBook/blob/code/01_linear_regression/01_linear_regression.ipynb) for complete example.

In this example, we had just one value as input i.e. the $$x$$ was scalar. 
However, there might be seveal factors which influence the sales figures like
* Time of investment
* Time of commercial
* Expenditure on radio commercials
* Expenditure on newspaper commercials

In this case, the $$x$$ is not a scalar, but a collection of the above 
attributes. The following section will formalize the linear regression problem 
for such cases.
