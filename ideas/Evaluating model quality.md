2023-02-09 / 15:49

Status: #idea
Tags: [[ml]]

# Evaluating model quality

As mentioned in [[Phases of ML]] as soon as we have the model it's good to evaluate it's quality. One of the ways to do that is RMSE - _root mean squared error_.

This is how it looks like:

$RMSE = \sqrt{\frac{1}{m}\sum_{i=1}^m{(g(x_i) - y_i)^2}}$

g and y are from [[Linear regression]]

The square of the difference between the predictions and the actual values is used in RMSE because it penalizes larger errors more than smaller errors. This is useful in ensuring that outliers don't have too much influence on the overall error metric. By squaring the difference, larger errors will have a larger impact on the RMSE, while smaller errors will have a smaller impact. This helps to ensure that the RMSE is more accurately reflecting the overall error of the model. Additionally, squaring the difference also helps to make the RMSE easier to interpret, as it provides a simple measure of the average difference between the predictions and the actual values.

So, now we can use `y` and `x` from the validation dataset that hasn't participated in the model training to get the error. If we have multiple models or use different set of features to train the liner regression model we can compare them by using RMSE. 

# References

[[ML zoom-camp]]