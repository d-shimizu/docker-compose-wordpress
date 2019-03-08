# docker-compose-wordpress

Nginx, PHP(FPM), MySQL のオフィシャルのDockerイメージを組み合わせてWordpressを動かすためのDocker Composeです。

## Description


## Requirement

* Docker (docker-ce-18.09.1-3)
* Docker Compose

## Install&Usage

* download

```
git clone https://github.com/daisukeshimizu/docker-compose-wordpress.git

cd docker-compose-wordpress
```

* Change Domain on docker-compose.yml & wordpress.conf

```
vim docker-compose.yml

vim wordpress.conf
```

* donwload latest wordpress

```
./download_wordpress.sh
```

* build

```
docker-compose build
      
docker-compose up -d
```

* get let's encrypt certificate

```
./letsencrypt.sh
```

* restart

```
docker-compose restart
```

## Licence

## Author

[Daisuke SHIMIZU](https://github.com/daisukeshimizu)

