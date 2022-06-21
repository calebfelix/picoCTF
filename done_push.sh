#! /bin/bash


echo "
<p align='center'> 
<img src=https://picoctf.org/img/logos/picoctf-logo-horizontal-white.svg></img>
</p>
</br>

\`\`\`bash
$(tree -d -L 2 --gitignore)
\`\`\`" > README.md

git add .
DATE=$(date +%F)
git commit -m "pushed on $DATE"

git push -u origin master