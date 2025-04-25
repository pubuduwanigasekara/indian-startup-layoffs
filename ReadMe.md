

Build & Run the Container:

## Build the image (tag it as “layoffs-notebook”)
docker build -t indian-layoffs .

## Run it, mounting your project so changes persist, and map port 8888

docker run -p 8888:8888 -v $(pwd):/app indian-layoffs

<!-- docker run -d \
  -p 8888:8888 \
  -v "$PWD":/workspace \
  --name layoffs-dev \
  layoffs-notebook -->
