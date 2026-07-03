#!/bin/sh

# Step 1: Run `git pull` to update the local repository
echo "Running 'git pull'..."
git pull

# Step 2: Run `git add .` to stage all changes
echo "Running 'git add .'"
git add .

# Step 3: Create a commit with a timestamp in the message
commit_message="Sync at $(date +'%Y-%m-%d %H:%M:%S')"
echo "Running 'git commit -m \"$commit_message\"'"
git commit -m "$commit_message"

# Step 4: Run `git push` to push the changes to the remote repository
echo "Running 'git push'..."
git push

echo "Sync complete!"