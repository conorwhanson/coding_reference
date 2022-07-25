
# Artificial Neural Networks (ANN)

Set of algorithms modeled after the human brain (neurons).

Pros:
- Can be very good at detecting complex, nonlinear relationships in data.
- Good at handling messy or noisy data.

Cons:
- Prone to overfitting (especially with many hidden layers).
- Can use too many computational resources if the model is too complex.
- Too complex to understand.

Good rule of thumb: have 2-3x the number of neurons (hidden layers) as the number of inputs.

### Perceptron model

A single neural network unit (mimics a biological neuron) that takes in data, weighs it, and produces an output. It is made of 4 components:

1. **Input values** (often labeled x or χ)
2. **Weight coefficient** (often labeled w or ω)
3. **Bias** - a constant added to the input to influence the final decision. This "stirs the pot" so to speak. This will be an additional variable added to the number of input variables.
4. **Net summary function** - aggregates all of the weighted inputs.

Perceptron models are commonly used as a **linear binary classifier** (two groups that can be separated using a linear equation)

![perceptron_model]()

As a model iterates through its process it gets better at perceiving the data. This is called **model training** and runs until at least 1 of 3 conditions are satisfied:
1. The perceptron model exceeda a predefined performance threshold.
2. The perceptron model runs through a predetermined number of iterations.
3. The perceptron model is stopped or throws an error while training.

### Basic Neural Networks

Consist of 3 layers:
1. Input(s) transformed by weight coefficients
2. Hidden layer (the neurons)
3. Output that reports model values (whether classification or regression)

What if each neuron has its own output? How are they combined into a single classification/regression model?

An **Activation function** is applied to the end of each neuron (or perceptron model) which transforms the output into a quantitative value. This is then used as an input for other neural network layers. A number of functions exist:

- **Linear function** returns the sum of weighted inputs and does not transform them.
- **Sigmoid function** is an S-curve that transforms output to a range of 0 to 1. Ideal for binary classification.
- **Tanh function** is also an S-curve, but transforms output to a range of -1 to 1. Useful for classification or regression.
- **Rectified Linear Unit (ReLU) function** returns a value from 0 to infinity, and any negative input passed through the function becomes 0. Good for a simple output, but not for simpler models. Good for looking at positive nonlinear data for classification or regression.
- **Leaky ReLU function** is an alternative to ReLU where the negative inputs are transformed into small negative values. Good alternative for nonlinear data with many negative numeric inputs.

**Loss** is a metric used to represent the model's ability to predict a single data point. Lower = better.

**Evaluation metric** measures how well or porrly the model characterizes data after each iteration.

**When a model doesn't perform as expected look at either 1) the model design (inadequate or inappropriate) or 2) the training data (insufficient or ineffective).**

### Optimizing a Neural Network
- Verify input data
- Increase hidden layer neurons
- Add more hidden layers (more computation on same amount of data*)
- Try different activation functions for the hidden layers
- Increase epochs for training regimen