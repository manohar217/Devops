#!/bin/bash
cd /home/vagrant/github/Devops
date
history > history.txt
git add .
git status
git commit -m "$(date)"
git push 
