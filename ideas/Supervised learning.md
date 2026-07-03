2023-01-23 / 20:44

Status: #idea
Tags: 

# Supervised learning

It uses **features** (different characteristics of data) and **target** (the thing we want to predict) to train the model and predict new **target** having new **features** as input.   
  
This is supervised learning. You teach machines by providing features and desired output and then machines are able to predict the target from new set of values of features they never saw.  
  
For example: using existing vehicles with features (like manufacture, model, mileage, and so on) and corresponding prices we teach ML to predict the price for vehicles that are not in our base.  
  
Another example is a spam filter. By providing mails with text, sender, and so on and info is it spam or not we teach ML to filter new emails.  
  
So we have a feature matrix (where columns are features and rows are experiments) and a target vector.

![[9ab80d94-8cf1-4883-9dd3-d08bd3fe6006 1.png]]

Using the Matrix and the Target Vector we trying to create a function g(X) that generates a result closed to the vector y. So we can pass new samples and receive a result closed to what we had for learned samples. Depending on the result there are different types of supervised ML:  
  
1. Regression: the output is a number (the price of a vehicle, for example)  
  
2. Classification: the output is a category
	1. binary (spam not spam)
	2. multiclass (limited amount of categories) (a car is Toyota, Ford, Volkswagen, and so on)
3. Ranking (the target variable _y_ is an ordering of elements within a group, such as the order of pages in a search-result page. The problem of ranking often happens in areas like search and recommendations)

Each supervised learning problem can be solved with different algorithms. Many types of models are available. These models define how exactly function _g_ learns to predict _y_ from _X_. These models include
	1. Linear regression for solving the regression problem
	2. Logistic regression for solving the classification problem
	3. Tree-based models for solving both regression and classification
	4. Neural networks for solving both regression and classification



# References

[[ML zoom-camp]]