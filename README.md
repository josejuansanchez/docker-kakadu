# docker-kakadu


```
docker run -it --rm kakadu
```

```
docker run -it --rm kakadu kdu_server -u
```

```
docker run -it --rm -v /home/josejuansanchez/jp2/:/jp2 -p 8090:80 kakadu kdu_server -wd /jp2
```

```
docker run -it --rm kakadu kdu_compress
```

```
docker run -it --rm kakadu kdu_expand
```

## How to create the Docker image

```
docker build -t kakadu .
```

## How to publish the Docker image on Docker Hub

```
docker login
docker tag kakadu josejuansanchez/kakadu:1.0
docker images
docker push josejuansanchez/kakadu:1.0
```

## Docker Hub

https://hub.docker.com/r/josejuansanchez/kakadu


