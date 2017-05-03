#!/bin/bash
docker build . -t carbon-relay-ng-builder -f Dockerfile.build
docker run -it -v ${PWD}:/localmount  carbon-relay-ng-builder cp /go/bin/carbon-relay-ng /localmount/.
docker build . -t carbon-relay-ng
