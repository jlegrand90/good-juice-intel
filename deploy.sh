#!/bin/bash
# Good Juice Dashboard — GitHub Pages Deploy Script
# Run this after creating the GitHub repo

REPO_URL="https://github.com/jlegrand90/good-juice-intel.git"
DEPLOY_DIR="$HOME/.hermes/good-juice/github-deploy"

cd $DEPLOY_DIR

# Add remote (if not already added)
git remote remove origin 2>/dev/null
git remote add origin $REPO_URL

# Push to GitHub
git branch -M main
git push -u origin main

echo "✅ Dashboard deployed to GitHub Pages"
echo "📍 URL: https://jlegrand90.github.io/good-juice-intel/dashboard.html"
