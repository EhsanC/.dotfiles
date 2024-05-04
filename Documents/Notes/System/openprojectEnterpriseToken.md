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


