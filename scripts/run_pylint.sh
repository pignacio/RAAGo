#! /bin/bash
set -u

for app in games events ratings web; do
  echo "Checking app $app with pylint"
  pylint aago_ranking/$app -r n --ignore=migrations
done
