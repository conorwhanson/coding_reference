# Artificial Neural Networks (ANN)

Set of algorithms modeled after the human brain (neurons). Basic structure is **nodes**.

**Preprocessing data is crucial for NN.**
- one-hot-encoding for categorical variables (however this can be memory-intensive if there are a lot of unique values)
- bucketing/binning collapses infrequent values into a single category ("other")

![preprocessing](https://github.com/conorwhanson/coding_reference/blob/main/Neural_Networks/resources/preprocessing_for_ML.png)

Pros:
- Can be very good at detecting complex, nonlinear relationships or patterns in data.
- Good at handling messy or noisy data.
- Can take images as inputs(!)

Cons:
- Prone to overfitting (especially with many hidden layers or small amounts of data).
- Can use too many computational resources if the model is too complex.
- Too complex to understand.

Good rule of thumb: have 2-3x the number of neurons (hidden layers) as the number of inputs.

**Forward/Backward propogation: run model (inputs go forward), evaluate output, send the output back to tune model (backward).**

### Perceptron model

A single neural network node (mimics a biological neuron) that takes in data, weighs it, and produces an output. A single perceptron is essentially a linear model (good at a linear regression!). It is made of 4 components:

1. **Input values** (often labeled x or χ)
2. **Weight coefficient** (often labeled w or ω) is a value given to 1) the neuron and 2) the feature or the algorithm, based on their performance.
3. **Bias** - a constant added to the input to influence the final decision. This "stirs the pot" so to speak. This will be an additional variable added to the number of input variables.
4. **Net summary function** - aggregates all of the weighted inputs.

Perceptron models are commonly used as a **linear binary classifier** (two groups that can be separated using a linear equation)

![perceptron_model](https://github.com/conorwhanson/coding_reference/blob/main/Neural_Networks/resources/perceptron_model.png)

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

An **Activation function** is applied to the end of each neuron (or perceptron model) which transforms the output into a quantitative value. Is it a linear regression or classifcation? Function chosen based on this. This is then used as an input for other neural network layers. **NOTE: The final layer of nodes/neurons is where the activation function is really important**. A number of functions exist:

- **Linear function** returns the sum of weighted inputs and does not transform them.
- **Sigmoid function** is an S-curve that transforms output to a range of 0 to 1. Ideal for binary classification.
- **Tanh function** is also an S-curve, but transforms output to a range of -1 to 1. Useful for classification or regression.
- **Rectified Linear Unit (ReLU) function** returns a value from 0 to infinity, and any negative input passed through the function becomes 0. Good for a simple output, but not for simpler models. Good for looking at positive nonlinear data for classification or regression.
- **Leaky ReLU function** is an alternative to ReLU where the negative inputs are transformed into small negative values. Good alternative for nonlinear data with many negative numeric inputs.

**Loss** is a metric used to represent the model's ability to predict a single data point. Lower = better.

**Evaluation metric** measures how well or porrly the model characterizes data after each iteration.

**When a model doesn't perform as expected look at either 1) the model design (inadequate or inappropriate) or 2) the training data (insufficient or ineffective).**

### Optimizing a Neural Network
- Verify input data, increase input data
- Increase hidden layer neurons
- Add more hidden layers (more computation on same amount of data*)
- Try different activation functions for the hidden layers
- Increase epochs for training regimen
- Bucket or bin categorical data

### Keras

**Behind the scenes this is what builds the neural networks**

Using Tensorflow is a UI that then translates into Keras to build & run the neural networks.

### Shallow Neural Network
1 Layer of nodes.

### Deep Neural Network
2 or more hidden layers of nodes.
Typically it's better to add more neurons than layers, but 3-5 max layers.

RNN = Recurrent Neural Network (time series)
GAN = Generative Adversarial Network
CMM = Convolutional Neural Network (image/object recognition)

### Computer Vision
Takes an image and turns it into pixels; all pixels have a value.

### Transfer Learning in Computer Vision
Take layers from someone else's computer vision to be adapted to our particular use.

Image Augmentation: take a dataset of images, double or triple it in size by augmenting the images (zoom in, out, adjust contrast, crop, etc). This can train the model on different augmentations of the same image.
