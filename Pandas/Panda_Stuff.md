# Pandas Stuff
99% files that are encoded are done with UTF-8

import numpy as np --> can help expand array analysis

Format last!!!! It turns int to strings and RUINS FURTHER ANALYSIS/CALCULATIONS
Perhaps take it into Excel to format (export as csv)

.loc[column, rows as colon]
.groupby("category")[["blah blah", "blah blah"]].mean()

binning done on numerical data to turn into groups. 
NOTE: You will always have one extra bin than group!!

Cheats:
pd.options.display.max_colwidth = 100 # display 100 columns

# allow max columns to be displayed
pd.set_option('display.max_columns', None)
pd.set_option('display.max_colwidth', None)

.iloc = index locator (uses row, column order and can pull based on index position)
example: df.iloc[:,0] # everything from first column
	 df.iloc[-5:] # every column of the last 5 rows of the dataframe

NOTE: iloc uses stdlib Python indexing scheme which excludes first element in range (e.g. iloc[0:10] returns 0 thru 9)

.loc = label-based selecting; value of data index rather than position.
example: df.loc[row, 'column']

NOTE: indexes inclusively and doesn't exclude elements in range.

df.column.isin = finds values in column. Example: reviews.loc[(reviews.wines.isin(["Cab", "Merlot","Riesling"])]