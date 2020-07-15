# libsndfile-build
Build libsndfile binaries with docker

```bash
$ docker pull scarecrow1123/libsndfile-build
$ docker run -it -v $PWD:/usr/libsndfile libsndfile-build
```

This builds libsndfile and places the artifacts in `$PWD/libsndfile_build` directory.
