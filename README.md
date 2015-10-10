# docker-firefox
Runs firefox in a docker container

Uses *centos* under the hood (I guess that any distr will do)

Downloads and install NoScript and uBlock addons for firefox

- **allow_xhost.sh** should be run on a host machine if firefox is unable to open a display. Somewhy my fedora host worked without this addon while ubuntu 14.04 did not
- **build.sh** builds the docker image named docker-ff
- **firefox.sh** runs firefox
