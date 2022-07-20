# Unsupervised Machine Learning
Takes in data with **no paired inputs and no known output/target**. This is used to find patterns or groups that may exist in the data. The only input is the entire dataset.

Like Supervised learning, Unsupervised only takes in **numerical values**.

Unsupervised learning has two methods:

1. **Transforming** the entire dataset into an intuitive viz for analysis or for use in another (supervised) ML model. This makes raw data easier to understand.
2. **Clustering** data determines patterns/similarities in various groupings of data points.

Unsupervised learning can help to explore data if you're not sure what you're looking for, which also means it can be hard to determine if the results are correct/representative of reality.

Prior to running Unsupervised algorithms we need to:

**Select** data => make choices about which data to use/include.
**Process** data => organize data (format, clean, sample, drop nulls, dimensionality reduction, label encoding/one hot encoding, scaling, etc).
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