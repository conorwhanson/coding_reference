## Machine Learning Fundamentals
Using statistical algorithms to perform tasks, but specifically to learn from data **patterns** for making future predictions. Machine Learning is fundamentally about **predictive analytics**.

What does it mean for a machine to "learn"? **The ML algorithms use training data to set their internal parameters.**

Basic ML flow:
1. EDA
2. ML model is given a dataset
3. ML algorithm analyzes the data, attempting to identify patterns.
4. Based on patterns found the model makes predictions on new data.

OR

1. Model
2. Fit(train)
    - watch for overfitting! This indicates the training set is finding patterns that are not present in the data set.
3. Predict

#### Generally there are 3 ML categories:

1. **Supervised** deals with labeled data. Dataset divided into features (variables for prediction) and targets (predicted outcome(s)). This is the most common ML algorithm.
    - Linear Regression: prediction based on continuous variables (i.e. numeric data)

        - basic pattern for linear regression:
        1. Split the data into input (X) and output (y)
        2. Create an instance of the model (model = LinearRegression())
        3. Train the model with the given data (model.fit(X,y))
        4. Generate predictions via output_predit = model.predict(X)

        Multiple Linear Regression can be used for multiple features.

    - Classification: prediction probability based on discrete outcomes where outcome is assigned to a class (either in the class or out, Y or N. **Must clear a probability cutoff point**). Primarily differentiated from regression by a binary outcome (often called Logistic Regression). Stratifing the data here is important, especially if the input/output are disproportionate.

        - basic steps for logistic regression:
        1. Create the model with LinearRegression()
        2. train the model with model.fit()
        3. make predictions on data with model.predict()
        4. Validate model accuracy with accuracy_score()

2. **Unsupervised** deals with data without labeled outcomes (finds patterns given the dataset itself)
    - Clustering: these data are close to one another but no labels/correlations. 
    - Dimensionality Reduction: reduces the number of data input variables in a particular dataset, which still allows for meaningful predictive outcomes.

3. **Reinforcement** 


#### Evaluating Models
Residuals are used to determine the difference between predicted **y** and observed **y**.

Whole point of ML is to predict the target most effectively. Which models do this best/with the highest success rates, etc.

**Visualize each model**

Models are only as good as input data; data cleaning is crucial.

For Regression models: 
- R-squared (% of features explained by the model)
- MSE (avg squared error) & MAE (avg absolute error) compare models to one another. Closer to 0 the better**
- RMSE (squre root of MSE; can be comapred to MAE). These metrics summarize how close predicted values are to actual values.
- Residual helps to see over/under predicting.

**RMSE > MAE = large errors happened**

**Regularization**

**Precision vs. Sensitivity**
- Precision, aka Positive Predictive Value (PPV), is the result of dividing True Positives (TP) by all positives, both TP and FP. Answers the question: "how likely is this?"

- Sensitivity, aka recall, is how likely the classification has been assigned properly (i.e. how likely the test will correctly diagnose cancer).

**Trade-off often required between these two**
While high sensitivity helps catch everything, it can be more aggressive and falsely attribute positives. Precision will be more likely to be a true positive, but much more conservative in its process and therefore miss others beyond the target range.

**F1 (Harmonic Mean)** is a single summary stat of precision and sensitivity.

![classification_perf](https://github.com/conorwhanson/coding_reference/blob/main/Machine_Learning/Classification_perf_assesment.png)

**Support Vector Machine** separates dataset into two classes with the widest possible margins, which can allow for outlier exceptions (with 'soft' margins).

![SVM](https://github.com/conorwhanson/coding_reference/blob/main/Machine_Learning/support_vector.png)

![soft_margins](https://github.com/conorwhanson/coding_reference/blob/main/Machine_Learning/soft_margin_SVM.png)

#### Tree-based Algorithms
A decison tree uses conditional statements to encode true/false questions.