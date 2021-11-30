#!/bin/bash
# You touched my files???
# Open issue to get this reverted.
echo Repo "$GITHUB_REPOSITORY"
echo SHA "$GITHUB_SHA"
echo Actor "$GITHUB_ACTOR"
echo "GH prompt"
gh config set prompt disabled
gh config get prompt
echo "GH auth"
#export GITHUB_TOKEN=test
echo "$GITHUB_TOKEN" | gh auth login --with-token

LATEST=$(cat .Ossonts/latestSHA.log)

HISTORY=$(.Ossonts/latestHistory.log)

MESSAGE="This commit has altered files that you are not supposed to alter.

You need to fix this, or your final submit might not be registered.

Go back to the initial first commit and copy the original files back -- and commit them.

Look here to see what you altered:  $GITHUB_SHA

If you are unsure and it looks like you altered every line in the file, you probably opened the files in a windows editor and it changed the line endings. You need to fix this!

This commit:
$LATEST

Here is your history (if any):

$HISTORY


"

gh issue create -t "WARNING -- Please fix/check" -b "$MESSAGE"

cat .Ossonts/latest*