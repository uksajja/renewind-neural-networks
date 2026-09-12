
## ReneWind-Neural-Networks (Wind Turbine Failure Classification)
------------------

## Project Evolution

### v1.0.0 — ML Development

Initial deep learning (neural networks) implementation.

## Skills & Tools
------------------
- EDA
- Data Preprocessing
- Artificial Neural Networks
- HyperParameter Tuning
- Model Performance Evaluation
- Business Recommendations

- Deep Learning
- TensorFlow
- Keras
- CUDA

## Steps to Run the project:
----------------------------

### Note: On windows, tensorflow does not support GPU, only CPU version is supported.

  - For Tensorflow with GPU support:
    - Use docker
    - Switch to Linux
    - Use WSL2

- Local venv environment
  - py -3.12 -m venv .venv
  - source .venv/Scripts/activate  (Git bash)  or .\.venv\Scripts\Activate.ps1 (PowerShell)
  - source .venv/bin/activate (on linux)
  - python -V
  - python -m pip install --upgrade pip setuptools wheel

  - python -m pip install -r requirements.txt
  - open notebook and select the local python .venv as kernel
  - run all the cells

  - deactivate if you want to come out of the virtual environment

- Local conda environemnt
  - conda env create -f environment.yaml
  - conda activate env-renewind-neural-networks
  - open notebook and select the local python env-renewind-neural-networks as kernel
  - run all the cells

- Inside docker
  - docker build -t renewind-neural-networks .
  - docker run --rm -p 8890:8888 -e JUPYTER_TOKEN=my-secret-token renewind-neural-networks
  - Run with gpu
    - check if GPU is available
    - nvidia-smi
    - If avialable,
    - docker run --gpus all --rm -p 8890:8888 -e JUPYTER_TOKEN=my-secret-token renewind-neural-networks
    - open http://localhost:8890/?token=my-secret-token
    - run the notebook
