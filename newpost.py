import os
from datetime import datetime

def generate_jekyll_post(title):
    # Ensure the _posts directory exists
    if not os.path.exists('_posts'):
        os.makedirs('_posts')

    # Format the current date
    date_str = datetime.now().strftime('%Y-%m-%d')
    datetime_str = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    # Create the filename
    filename = f'_posts/{date_str}-{title.replace(" ", "-").lower()}.md'

    # Create the content for the new post
    content = f"""---
layout: post
title: "{title}"
published: true
date: {datetime_str}
tags:
- todo
- list
---

Write your post content here.
"""

    # Write the content to the file
    with open(filename, 'w') as file:
        file.write(content)

    print(f"New Jekyll post created: {filename}")

# Example usage
generate_jekyll_post("My New Blog Post")

import sys

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python newpost.py \"Post Title\"")
        sys.exit(1)

    post_title = sys.argv[1]
    generate_jekyll_post(post_title)
