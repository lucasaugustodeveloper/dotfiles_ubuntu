#!/bin/bash
#
echo "Enter username in github:"
read username

gh repo list $username --limit 200 | while read -r repo _; do
  gh repo clone "$repo" "$HOME/Repositories/$repo"
done

