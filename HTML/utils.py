import hashlib
import os

__full_path = os.path.dirname(os.path.abspath(__file__))

# Cache Id function to create hashed Id when files change
def build_cache_id(relative_file_url: str):
    if not relative_file_url:
        return "Error_No_File"

    fullname = os.path.abspath(os.path.join(__full_path, relative_file_url.lstrip('/')))

    if not os.path.exists(fullname):
        return "Error_Missing_File"

    # cache into single directory

    return __get_file_hash(fullname)

def __get_file_hash(filename):
    md5 = hashlib.md5()

    with open(filename, 'rb') as fin:
        data = fin.read()
        md5.update(data)
    
    return md5.hexdigest