#!/bin/bash
DATE=$(date +%Y-%m-%d)

# /Users/friedmand/Google\ Drive/Backup/project-env-files/
envs=($(find /Users/tynandebold/sites -name '.env' -maxdepth 2))

for env in "${envs[@]}"; do
  project=$(sed -E "s/\/Users\/tynandebold\/sites\/(.*)\/\.env/\1/g" <<<$env)
  filename=$DATE-$project.env
  cp $env /Users/tynandebold/Documents/backup/project-env-files/$filename
done
