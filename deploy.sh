#!/bin/sh
set -e

vendor/bin/phpunit

(git push) || true

git checkout main
git merge desarrollo

git push origin main

git checkout desarrollo