# Note



## How to use
```sh

# this will build the docker image and run the container in the background
docker compose up -d

# this will show logs from the container
docker compose logs

```

## Run Test
```sh
pytest tests/ --ignore tests/demo/ --ignore test/scripts

pytest tests/demo/

```