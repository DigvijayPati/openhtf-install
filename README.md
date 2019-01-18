# openhtf-install
openhtf installation using docker

## Build image
```bash
$ docker build --no-cache -t your-image-name -f Dockerfile .
```

## Run Container
```bash
$ docker run --rm -it your-image-name
```

###Run sample openhtf test from inside container
```bash
$ cd /usr/local/lib/python3.5/dist-packages/examples
$ python3 hello-world.py
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
