# kaosf/ubuntu-x

Following packages are installed.

- xfce4
- tightvncserver
- language-pack-ja
- fonts-vlgothic

## Usage

At first, run a Docker container.

```
docker run -p 5901:5901 -it kaosf/ubuntu-x /bin/bash
```

How to start VNC server.

```
export USER=root
export LANG=ja_JP.UTF-8
vncserver :1 -geometry 1280x720 -depth 24
```

How to kill it.

```
vncserver -kill :1
```

## NOTE

With SSH tunnel

```
REMOTE=123.456.789.012
LOCAL_PORT=5901
REMOTE_PORT=5901

ssh username@${REMOTE} -L ${LOCAL_PORT}:${REMOTE}:5901
```

```
# VNC client example
gvncviewer localhost:1
```

## References

- https://twitter.com/mapk0y/status/838440104238575621
- https://gist.github.com/mapk0y/315933e0b6a2d71cefe937433eeb5bd4

## License

[![Public Domain](http://i.creativecommons.org/p/mark/1.0/88x31.png)](http://creativecommons.org/publicdomain/mark/1.0/ "license")

This work is free of known copyright restrictions.
