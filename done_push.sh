#!/bin/bash

# Get current branch (useful if not always 'master')
BRANCH=$(git branch --show-current)

# Start README content
echo "
<p align='center'> 
  <img src='https://picoctf.org/img/logos/picoctf-logo-horizontal-white.svg' />
</p>
<br/>

## Directory Links

" > README.md

# List all directories (max depth 2), skipping .git and hidden dirs
find . -maxdepth 2 -type d ! -path '*/\.*' | tail -n +2 | while read dir; do
  # Remove leading ./ and encode spaces
  clean_path="${dir#./}"
  url_path=$(echo "$clean_path" | sed 's/ /%20/g')
  echo "- [${clean_path}](https://github.com/$(git remote get-url origin | sed -E 's/.*github.com[/:](.*)\.git/\1/')/tree/${BRANCH}/${url_path})" >> README.md
done

echo -e "\n" >> README.md

# Git operations
git add .
DATE=$(date +%F)
git commit -m "pushed on $DATE"
git push -u origin "$BRANCH"
