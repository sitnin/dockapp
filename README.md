# Sample Node.js application in Docker container

This experiment was performed because of lack of node.js containerization instructions which capable of something more than just run `npm start`.

It:

- doesn't contain unnecessary garbage
- builds modern app (ok, now just with "imports") with babel before building an image
- deploys something like common shared static assets which is mounted as a volume
- creates directory for uploads which also can be mounted as a volume
- capable of storing configuration files in a separate volume (which makes possible to deliver config changes without rebuilding and redeploying container itself)   

## Image building

```bash
$ ./build.sh
```

## Test run

```bash
$ docker run -it --rm \
    -p 127.0.0.1:8000:8000 \
    -v /tmp/conf:/etc/app \
    -v /tmp/data:/var/app \
    --name dockapp \
    dockapp
```

## Useful links

* [Official Node's README](https://github.com/nodejs/docker-node) about node docker image.
* [Dockerizing a Node.js web app](https://nodejs.org/en/docs/guides/nodejs-docker-webapp/) article at Node.js' website
