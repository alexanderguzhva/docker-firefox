docker run -i -t --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	docker-ff \
	/usr/bin/firefox --no-remote addon-722-latest.xpi addon-607454-latest.xpi
