# anubisworks-ganache
Ganache ethereum simulator, with node.js stack


### Build

```
docker image build -t anubisworks-ganache:1.0 .
```

### Run (interactive debug)

```
docker run -it --rm --name anubisworks-ganache -p 7545:7545 -p 8545:8545 anubisworks-ganache:1.0
```
