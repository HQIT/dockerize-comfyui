FROM pytorch/pytorch:2.4.0-cuda12.4-cudnn9-runtime
# according to ur cuda version

WORKDIR /app

COPY . /app
# on my local machine, i put this Dockerfile into the ComfyUI dir, which cloned from `https://github.com/comfyanonymous/ComfyUI`

RUN pip install -r requirements.txt --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple

EXPOSE 8188
CMD ["python", "/app/main.py", "--port", "8188", "--listen"]
# main.py has many arguments, ref it's doc
