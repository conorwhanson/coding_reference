# use list comprehension to restrict data with specified paramters: 
# has "Director"/"Directed by", has "imdb_link", and does not have "No. of episodes"
wiki_movies1 = [movie for movie in wiki_movies_raw
               if ("Director" in movie or "Directed by" in movie)
               and "imdb_link" in movie
               and "No. of episodes" not in movie]
len(wiki_movies1)

# create a function to clean up the data with movie as parameter
def clean_movie_list(movie):
    
    # 1. make a copy of the dict to save it in memory to avoid destructable edits (using a local variable movie that 
    # can only be referenced inside the function)
    movie_copy = dict(movie)
    alt_titles = {}
    
    # 2. use a for loop to loop through columns with these names and remove them with pop()
    for key in ['Also known as','Arabic','Cantonese','Chinese',
                'French','Hangul','Hebrew','Hepburn','Japanese',
                'Literally','Mandarin','McCune–Reischauer','Original title',
                'Polish','Revised Romanization','Romanized','Russian',
                'Simplified','Traditional','Yiddish']:
        
        # 2a. if the key exists in the movie object remove it and append it to the created dict above
        if key in movie:
            alt_titles[key] = movie[key]
            movie.pop(key)
            
        # 3. After loop add alt_titles dict to movies
    if len(alt_titles) > 0:
        movie['alt_titles'] = alt_titles
        
    # 4. Merge column names   
    def change_column_name(old_name, new_name):
        if old_name in movie:
            movie[new_name] = movie.pop(old_name)
    change_column_name("Adaptation by", "Writer(s)")
    change_column_name("Country of origin", "Country")
    change_column_name("Directed by", "Director")
    change_column_name("Distributed by", "Distributor")
    change_column_name('Edited by', 'Editor(s)')
    change_column_name('Length', 'Running time')
    change_column_name('Original release', 'Release date')
    change_column_name('Music by', 'Composer(s)')
    change_column_name('Produced by', 'Producer(s)')
    change_column_name('Producer', 'Producer(s)')
    change_column_name('Productioncompanies ', 'Production company(s)')
    change_column_name('Productioncompany ', 'Production company(s)')
    change_column_name('Released', 'Release Date')
    change_column_name('Release Date', 'Release date')
    change_column_name('Screen story by', 'Writer(s)')
    change_column_name('Screenplay by', 'Writer(s)')
    change_column_name('Story by', 'Writer(s)')
    change_column_name('Theme music composer', 'Composer(s)')
    change_column_name('Written by', 'Writer(s)')
    
    return movie

clean_movies = [clean_movie_list(movie) for movie in wiki_movies1]
wiki_movies_df = pd.DataFrame(clean_movies)
sorted(wiki_movies_df.columns.tolist())

# add a column with data from an existing column by extracting data from the existing column
wiki_movies_df['imdb_id'] = wiki_movies_df['imdb_link'].str.extract(r'(tt\d{7})')
wiki_movies_df.drop_duplicates(subset="imdb_id", inplace=True)
wiki_movies_df.head()

# use list comprehension to return # of null values for each column
[[column, wiki_movies_df[column].isnull().sum()] for column in wiki_movies_df.columns]

# make a list of columns having less than 90% null values to reduce dataset
wiki_columns_to_keep= [column for column in wiki_movies_df.columns if wiki_movies_df[column].isnull().sum() < len(wiki_movies_df) * 0.9]
wiki_movies_df = wiki_movies_df[wiki_columns_to_keep]

# convert columns to proper dtypes using regular expressions (regex) which only work on strings
box_office = wiki_movies_df["Box office"].dropna()

# define function to find box office data that is a string
def is_not_a_string(x):
    return type(x) != str
box_office[box_office.map(lambda x: type(x) != str)]

# OR use a lambda function in place of function above for ease
box_office[box_office.map(lambda x: type(x) != str)]

# Becasue some data is stored as a list, use .join to put the lists together into a string
box_office = box_office.apply(lambda x: ' '.join(x) if type(x) == list else x)
box_office.head(40)