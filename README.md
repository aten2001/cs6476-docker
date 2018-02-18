This image contains all of the necessary tools and libraries to develop, run and test experiments for the assignments of CS6476 Computer Vision, a master's level class at Georgia Institute of Technology. The image contains:

Python 2.7.12 (CPython)
numpy
scipy
OpenCV 2.4.13-1 and dependencies

To allow for windows to be shown (such as those from `imshow`) on MacOS, you'll need to install and run XQuartz.

1) Update preferences 'Security' tab - turn on 'Allow connection from network drives'
2) Restart XQuartz and check that it is listening on port 6000:

`lsof -i :6000`

3) Get your IP:

`ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')`

4) Allow local machine to talk to XQuartz

`xhost  + ${ip}`

5) Run docker

`docker run -d -e DISPLAY=${ip}:0 -v /tmp/.X11-unix:/tmp/.X11-unix jonmpqts/cs6476:latest`

If on Windows, god help you.
