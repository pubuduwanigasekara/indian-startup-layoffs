# 1. Base image with Python
FROM python:3.10-slim

# 2. Create & set working directory
WORKDIR /workspace

# 3. Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Expose the Jupyter port
EXPOSE 8888

# 5. Default command to launch Jupyter Lab
CMD ["jupyter", "notebook", \
     "--ip=0.0.0.0", \
     "--port=8888", \
     "--no-browser", \
     "--allow-root", \
     "--NotebookApp.token=''"]
