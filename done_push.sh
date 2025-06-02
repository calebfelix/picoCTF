#!/bin/bash

# Get GitHub repo info
REPO_URL=$(git config --get remote.origin.url | sed -E 's/.*github.com[/:](.*)\.git/\1/')
BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Start README
cat <<EOF > README.md
<p align='center'> 
  <img src='https://picoctf.org/img/logos/picoctf-logo-horizontal-white.svg' />
</p>
<br/>

## 📁 Project Tree with Links

EOF

# Recursive function to generate tree with clickable folder names
generate_tree() {
  local path="$1"
  local prefix="$2"
  local depth="$3"
  local max_depth=2

  # stop if deeper than max depth
  if [ "$depth" -gt "$max_depth" ]; then return; fi

  local children=()
  while IFS= read -r -d '' child; do
    children+=("$child")
  done < <(find "$path" -mindepth 1 -maxdepth 1 -type d ! -path '*/.*' -print0 | sort -z)

  local count="${#children[@]}"
  for i in "${!children[@]}"; do
    local dir="${children[$i]}"
    local basename=$(basename "$dir")
    local rel_path="${dir#./}"
    local url="https://github.com/${REPO_URL}/tree/${BRANCH}/${rel_path}"

    # Determine prefix
    local connector="├──"
    local next_prefix="$prefix│   "
    if [ $((i+1)) -eq $count ]; then
      connector="└──"
      next_prefix="$prefix    "
    fi

    # Output the line with markdown link
    echo "${prefix}${connector} [${basename}](${url})" >> README.md

    # Recurse into subdirectories
    generate_tree "$dir" "$next_prefix" $((depth+1))
  done
}

# Start the tree
echo "." >> README.md
generate_tree "." "" 1

# Git commit and push
git add README.md
DATE=$(date +%F)
git commit -m "pushed on $DATE"
git push -u origin "$BRANCH"
