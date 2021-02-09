import yaml

with open(r'./config.yml') as file:
    docs = yaml.full_load(file)

    for item, doc in docs.items():
        print(item, ":", doc)
