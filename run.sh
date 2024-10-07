#!/bin/bash

# create venv and source venv/Activate/venv
# chmod +x <run.sh>
# edit .gitignore 
# ./<run.sh>

# Create remote repo in github
gh repo create auto-test --public
git remote add origin https://github.com/ocrobotix/auto-test.git
git remote -v

# Create docs
pip install mkdocs
mkdocs new .
git add .
git commit -m "Auto Commit"

# Push the main branch first
git push origin main

# Deploy site to gh-pages branch
mkdocs gh-deploy