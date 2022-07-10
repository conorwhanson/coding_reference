## Machine Learning Fundamentals
Using statistical algorithms to perform tasks, but specifically to learn from data patterns for making future predictions.

Basic ML flow:
1. ML model is given a dataset
2. ML algorithm analyzes the data, attempting to identify patterns.
3. Based on patterns found the model makes predictions on new data.

#### Generally there are 3 ML categories:

1. **Supervised** deals with labeled data. Dataset divided into features (variables for prediction) and targets (predicted outcome(s))
    - Linear Regression: prediction based on continuous variables (i.e. numeric data)
        - basic pattern for linear regression:
        1. Split the data into input (X) and output (y)
        2. Create an instance of the model (model = LinearRegression())
        3. Train the model with the given data (model.fit(X,y))
        4. Generate predictions via output_predit = model.predict(X)

    - Classification: prediction based on discrete outcomes where outcome is assigned to a class (either in the class or out, Y or N. **must clear a probability cutoff point**). Primarily differentiated from regression by a binary outcome (often called Logistic Regression). Statifing the data here is important, especially if the input/output are disproportionate.
        - basic steps for logistic regression:
        1. Create the model with LinearRegression()
        2. train the model with model.fit()
        3. make predictions on data with model.predict()
        4. Validate model accuracy with accuracy_score()

2. **Unsupervised** deals with data without labeled outcomes (finds patterns given the dataset itself)
3. **Deep** 
