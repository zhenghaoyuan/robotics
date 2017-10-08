#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/usr/local/lib/python3.6/site-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/usr/local/lib/python3.6/site-packages:/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/lib/python3.6/site-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build" \
    "/usr/bin/python" \
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/setup.py" \
    build --build-base "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build" \
    install \
    $DESTDIR_ARG \
     --prefix="/usr/local" --install-scripts="/usr/local/bin"
