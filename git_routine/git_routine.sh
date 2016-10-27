#! /bin/bash


ssh-keygen -C 'your@email.address' -t rsa


git config --global user.name "Your Real Name"
git config --global user.email  "you@email.address"

ssh-add

cd ~/reposi
git init

git remote add origin git@github.com:et0803/examples_Qt5_OpenCV3_ROS_OpenGL_cmake.git

git pull origin master

git add . 

git commit -m "first comment"

git push origin master
