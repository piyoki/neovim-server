import yaml
import re

"""logic
#1: parse parameters from YAML
#2: search target string
#3: compare the differences with init.vim
#4: overwrite the config
"""


def load_yaml():
    with open(r'./config.yml') as file:
        docs = yaml.full_load(file)
        result = {}
        for item, params in docs.items():
            #  print(item, ":", params)
            result[item] = params
    return result


def search_str(file, target_str):
    """Search for the given string in file and return lines containing that string,
    along with line numbers"""
    # parse all the parameters in config.yml
    params = load_yaml()
    print(params, '\n')
    line_num = 0
    result = []
    # Open the file in read only mode
    with open(file, 'r') as docs:
        # Read all lines in the file one by one
        for line in docs:
            # For each line, check if line contains the string
            line_num += 1
            if target_str in line:
                # If true, then add the line # & line as a tuple in the list
                result.append((line_num, line.rstrip()))
    return result


def overwrite_config():
    with open("test.txt", "r+") as f:
        text = f.read()
        print(text, '\n')
        # activate the parameter
        text = re.sub('"', '', text)
        print(text, '\n')
        # deactivate the parameter
        text = '"' + text
        print(text, '\n')


if __name__ == "__main__":
    print(search_str('./test.txt', 'relativenumber'))
    # overwrite_config()
