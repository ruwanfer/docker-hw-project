#!/bin/bash
# builder.sh - Docker build and push automation
set -e  # This is INSIDE the script, not in terminal

if [ $# -ne 2 ]; then
    echo "Usage: $0 <github-repo> <dockerhub-repo>"
    echo "Example: $0 mluukkai/express_app mluukkai/testing"
    exit 1
fi

GITHUB_REPO="$1"
DOCKERHUB_REPO="$2"
REPO_NAME=$(basename "$GITHUB_REPO")

echo "Cloning https://github.com/$GITHUB_REPO..."
git clone "https://github.com/$GITHUB_REPO.git" "$REPO_NAME"
cd "$REPO_NAME" || exit

echo "Building Docker image..."
docker build -t "$DOCKERHUB_REPO:latest" .

echo "Pushing to Docker Hub..."
docker push "$DOCKERHUB_REPO:latest"

echo "✅ Success: $DOCKERHUB_REPO:latest pushed to Docker Hub"
