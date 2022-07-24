# Unsupervised Machine Learning
Takes in data with **no paired inputs and no known output/target**. This is used to find patterns or groups that may exist in the data. The only input is the entire dataset.

Like Supervised learning, Unsupervised only takes in **numerical values**.

Unsupervised learning has two methods:

1. **Transforming** the entire dataset into an intuitive viz for analysis or for use in another (supervised) ML model. This makes raw data easier to understand.
2. **Clustering** data determines patterns/similarities in various groupings of data points.

Unsupervised learning can help to explore data if you're not sure what you're looking for, which also means it can be hard to determine if the results are correct/representative of reality.

Prior to running Unsupervised algorithms we need to:

**Select** data => make choices about which data to use/include.
**Process/Clean** data => organize data (format, clean, sample, fixing nulls, dimensionality reduction, encode categorical data, scaling (not encoded data!!), etc).
    - Scaling: normalizes data to produce a non-skewed data set. **Crucial for linear models**
    - Independence of input features: ensure each input feature is completely independent from one another. This is almost always impossible. Multiple correlations can exist in features (called multicollinearity). 
    - Dimensionality Reduction: Removes dimensions (features) to simplify dataset, but leaves you with less data with which to predict. More variance of information = better sample, but could also make the model prone to overfitting.
**Transform** data => for ease of future use; format into database, spreadsheet, csv, etc.

#### K-means algorithm for clustering
This algorithm groups data into K-clusters based on a shared characteristic or distance from a centroid (center mass of density). Centeroid is found via the mean of both the x and y values in a cluster.

**K-means = mean of all X values and mean of all Y values.**

- K is # of clusters and is always a user input.

Other clustering methods: DBScan, Hierarchical (agglomerative)

#### Elbow Curve
Method to determine best number of K-mean clusters.

**LOOK FOR WHERE THE VERTICAL LINE SHIFTS TO HORIZONTAL**

**Interia** objective functuon measures the amount of variance in a dataset. For the elbow curve you plot the # of clusters (or K values) on the X-axis and the interia values on y-axis.

#### Silhouette Score
How much overlap is there between groups? This can help evaluate the fit of the clusters.

A silhouette score closer to 1 is best, but if 2 clusters are coming in as best it's probably not a good idea to use clustering.

#### Princial Component Analysis (PCA) & Hierarchical Clustering
Prof Booth on PCA: overly complicated for something that doesn't matter.

PCA results in data features that are **independet** by converting them to components via math witchcraft. These can then be used in linear models.

Hierarchical clustering starts at the bottom and joins them together as it moves up the chain. There is only one answer within a hierarchical cluster model. However, subjective where cluster borders are. This differs from K-means where clusters can be changed to find the optimal K.

#### DBSCAN
Computationally heavy, but helps deal with the uncertain data points (which cluster??). Data point is un-clusterable.

#### Gaussian Clustering
Attaches a probability to each point in a cluster (how likely it is to be in a particular cluster)