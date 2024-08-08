# dockerize-comfyui

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
