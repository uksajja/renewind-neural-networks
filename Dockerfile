FROM tensorflow/tensorflow:2.18.0-gpu-jupyter

# Set working directory
WORKDIR /app

# Upgrade pip
RUN pip install --upgrade pip

COPY requirements.txt .

# Install Python libraries
# tensorflow + jupyter deps are already in the base image, so this only adds the rest
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Ensure Jupyter notebook and a Python kernel are available
RUN pip install --no-cache-dir notebook ipykernel

# Copy your project files
COPY . .

EXPOSE 8888

ENV JUPYTER_TOKEN=renewind-neural-networks-token
CMD ["sh", "-c", "jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --notebook-dir=/app/notebooks --NotebookApp.token=${JUPYTER_TOKEN}"]