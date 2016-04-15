Material Design Offline Docs on Docker
======================================

Usage
-----

First, pull the Docker image using the following command:

    $ docker pull propersoft/material-design-docs:201604

Next, create a container.

    $ docker run -d propersoft/material-design-docs:201604

Offline docs server starts and listens on port 80 in the container. To map it to the host's port(9101 for example), use the following command to create the container instead:

    $ docker run --name="md-docs" -p 9101:80 -d propersoft/material-design-docs:201604 python -m SimpleHTTPServer 80

> CMD is missing after commit, append it explicitly for now
