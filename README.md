# timchunght/buildstep
---

The ``Dockerfile`` in this repository is the source file for the base image. To use the image for your own project, you do not need to build the base image. Please refer to ``Usage`` Section for more information.

## Usage:

Heroku like Buildstep using Herokuish CLI and Docker; more flexible than timchunght/cedar or convox/cedar

Add ``FROM timchunght/buildstep`` to your ``Dockerfile``

### Build:

```
docker build -t your_app_name .
```

### Run:
 
```
docker run -it -p <host-port>:<container-port> -e "PORT=<container-port>" -e "DATABASE_URL=<database-url>" your_app_name
```

  
