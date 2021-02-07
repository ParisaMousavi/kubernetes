# change to 03-kuber.... folder and run this command
docker build -t example-2-3 -f .\example-2-3\dockerfile .\kuard\

docker run --rm -p 8080:8080 sample-2-3
