# timchunght/buildstep
---

Heroku like Buildstep using Herokuish CLI and Docker; more flexible than timchunght/cedar or convox/cedar

Add ``timchunght/buildstep`` to your ``Dockerfile``

### Build:

```
docker build -t your_app_name .
```

### Run:
 
```
docker run -it -p <host-port>:<container-port> -e "PORT=<container-port>" -e "DATABASE_URL=<database-url>" your_app_name
```

  
