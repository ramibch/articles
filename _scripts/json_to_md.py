import json
from pathlib import Path

# Input json file  output folder and language
input_file = "english/db_blog.json"
output_path = Path("english")
lang = "en"

with open(input_file) as f:
    data_array = json.load(f)


for article in data_array:
    # json structure
    title = article["fields"]["title"]
    slug = article["fields"]["slug"]
    content = article["fields"]["content"]
    body = f"# {title}\n\n{content}"

    article_path:Path = output_path / slug
    
    try:
        article_path.mkdir()
    except FileExistsError as e: 
        print(e)
        continue

    md_path = article_path / f"{lang}.md"
    md_path.write_text(body)

    
    


