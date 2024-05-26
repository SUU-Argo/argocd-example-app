# Example App

## Building and running locally
```
cd src
docker build -t example-app .
docker run -p 8080:8080 example-app
```

## Building and pushing to docker hub
```
chmod u+x build_and_push.sh
./build_and_push.sh
```