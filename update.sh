#!/usr/bin/env bash

git config --global user.name "Tinson Lai"
git config --global user.email "laitingsheng@hotmail.com"

git add docs

git commit -m 'Automated build from GitHub Actions'

git push
