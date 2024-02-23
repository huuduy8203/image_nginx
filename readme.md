# Deploy Nginx

## Step1: Building image
Docker command

```
docker build -t duy_nginx:dev .
```

Docker run command
```
docker run -d -p 1234:80 duy_nginx:dev
```