from mrjob.job import MRJob

class Bacon_count(MRJob):

    # second parameter allows methods to be mapped together; since I'm not using that, underscore tells Python to not use it.
    # 'line' will be the line of text taken from an input file
    def mapper(self, _, line):
        for word in line.split():
            if word.lower() == "bacon":

                # yield creates a generator object which returns a value that is NOT stored in memory
                yield "bacon", 1
    
    # reducer function takes 'self' as instance of class, 'key' for the key-value pair created in mapper function above ('bacon'),
    # and 'values' which are the values created from the mapper function.
    def reducer(self, key, values):
        yield key, sum(values)

if __name__ == "__main__":
    Bacon_count.run()