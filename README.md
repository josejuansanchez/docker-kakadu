# docker-kakadu

This repository contains a Dockerfile for building a [Docker][1] image containing the [Kakadu software tools][2].

[Kakadu][2] is a complete implementation of the [JPEG2000 standard][3].

This Docker image is also available on Docker Hub [josejuansanchez/kakadu:1.0][4].

## How to use

### `kdu_server`

```
docker run -it --rm kakadu
```

```
docker run -it --rm kakadu kdu_server
```

**Example:** How to display the usage of `kdu_server`.

```
docker run -it --rm kakadu kdu_server -u
```

**Example:** How to specify the listening port number.

```
docker run -it --rm -p 8090:80 kakadu kdu_server
```

**Example:** How to specify a working directory where the JPEG2000 images are stored.

```
docker run -it --rm -v /home/josejuansanchez/jp2/:/jp2 -p 8090:80 kakadu kdu_server -wd /jp2
```

### `kdu_compress`

```
docker run -it --rm kakadu kdu_compress
```

### `kdu_expand`

```
docker run -it --rm kakadu kdu_expand
```

## Usage examples

Also you can view the [usage examples][5] for the demonstration applications supplied with Kakadu v8.0.5.

## How to create the Docker image

```
docker build -t kakadu .
```

## How to publish the Docker image on Docker Hub

```
docker login
docker tag kakadu josejuansanchez/kakadu:1.0
docker tag kakadu josejuansanchez/kakadu:latest
docker images
docker push josejuansanchez/kakadu:1.0
docker push josejuansanchez/kakadu:latest
```

## Docker Hub

https://hub.docker.com/r/josejuansanchez/kakadu

[1]: https://www.docker.com
[2]: http://kakadusoftware.com
[3]: https://jpeg.org/jpeg2000/
[4]: https://hub.docker.com/r/josejuansanchez/kakadu
[5]: Kakadu_Usage_Examples.txt