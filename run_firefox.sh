docker run -i -t --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	--shm-size 2g \
	firefox-v4 \
	/usr/bin/firefox --no-remote


