import yaml
import re

"""logic
#1: parse parameters from YAML
#2: search target string
#3: overwrite the config
"""


def load_yaml():
    with open(r'./config.yml') as file:
        docs = yaml.full_load(file)
        for item, params in docs.items():
            print(item, ":", params)
            for attr, val in params.items():
                print(attr, '=', val)
                print(type(val))


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
    load_yaml()
    # overwrite_config()
