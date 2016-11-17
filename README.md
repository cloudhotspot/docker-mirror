# Simple Docker Mirror

This Docker image creates a simple Docker Registry mirror that listens on port 5000.

## Quick Start

To start up the registry mirror:

```
$ make registry
```

If you want to rebuild the registry image:

```
$ make build
```

To stop the registry mirror:

```
$ make clean
```

A Docker volume called `registry_cache` is automatically created when you run `make registry` and is persisted even if you stop the registry mirror. 

If you want to remove the registry cache Docker volume:

```
$ docker volume rm registry_cache
```