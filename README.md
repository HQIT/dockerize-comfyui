# dockerize-comfyui

## Steps
1. clone https://github.com/comfyanonymous/ComfyUI
2. put Dockerfile and docker-compose.yaml into ComfyUI
3. ``sudo docker-compose up --build -d``
4. open ComfyUI dashboard by url ``http://{host|ip}:8188``

## Dockerfile
- build docker image, ``docker build -t hqit/comfyui:latest .``

```
..
└── ComfyUI
    ├── ...comfyui's dirs and files...
    ├── docker-compose.yaml
    ├── Dockerfile
```

## docker-compose.yaml
- build image, maintain the ComfyUI service
- ``sudo docker-compose build comfyui`` rebuild the image
- ``sudo docker-compose up -d`` (re)create the service(s)
