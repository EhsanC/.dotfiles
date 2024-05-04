We created a simple Dockerfile to do that for us, everytime we upgrade our OpenProject-Version.

1. Save the file above into an empty directory.
2. Create a new Dockerfile in the same directory with the following content:

```
FROM openproject/openproject:14
COPY ./enterprise_token.rb app/models/enterprise_token.rb
```

3. Run docker build -t imagename:tag . (replace imagename and tag with whatever fancies you.)

```
docker build -t openproject:14

```


Alternatively (and more successfully) follow these steps:

1- Copy the file "enterprise_token.rb" in the same directory of the "docker-compose.yml" file.
2- Modify your "docker-compose.yml" :
add the follower code at line 31 :
- "./enterprise_token.rb:/app/app/models/enterprise_token.rb"
after :
volumes:
- "${OPDATA:-opdata}:/var/openproject/assets

3- finally execute the docker compose command :
OPENPROJECT_HTTPS=false PORT=8080 docker compose up -d

and all things will be fine.



