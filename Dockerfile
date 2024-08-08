FROM pytorch/pytorch:2.4.0-cuda12.1-cudnn9-runtime

WORKDIR /app

COPY . /app

RUN conda uninstall ffmpeg -y 
RUN apt update && apt install git libgl1 libglib2.0-0 ffmpeg libx264-dev -y
RUN pip install -r requirements.txt --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install -r /app/custom_nodes/ComfyUI-VideoHelperSuite/requirements.txt --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install -r /app/custom_nodes/ComfyUI-Manager/requirements.txt --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install -r /app/custom_nodes/ComfyUI-MuseV/requirements.txt --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install omegaconf pandas scikit-learn librosa ffmpeg-python easydict clip diffusers xformers scikit-image timm --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple

EXPOSE 8188
CMD ["python", "/app/main.py", "--port", "8188"]
