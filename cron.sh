#!/bin/bash
cd /home/vagrant/github/Devops
date
git add .
git status
git commit -m "$(date)"
git push 
