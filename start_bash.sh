!/bin/bash

module purge
module load Python
module load JupyterLab
module load FFmpeg
module load cuDNN
module load Miniconda3
module load UnZip


source whisper_env/bin/activate
srun -M ukko --mem=32G -p gpu --interactive --pty --gpus=1 /bin/bash 

nvidia-smi
python --version

# ssh -NfL localhost:9999:localhost:9999 pdas@turso01.cs.helsinki.fi

# source activate conda_env_emotion
# cd ../social-agent-sensing-api/api/utils/

# python -m ipykernel install --user --name whisper_env --display-name "Python jupyter_env"
# python -m ipykernel install --user --name emotion_env --display-name "Python (emotion_env)"

# module load UnZip
# tar -xvzf librispeech_test-clean.tar.gz -C test_clean/
# tar -xvzf IEMOCAP_full_release_withoutVideos.tar.gz -C imocap_without_video/
# tar -xvzf IEMOCAP_full_release.tar.gz -C imocap_full/
# tar -xvzf dev-other.tar.gz -C dev_other/
# unzip 'Data/archive(3).zip' -d 'Data/ravdess_audio'
# unzip 'Data/archive(3).zip' -d 'Data/ravdess_audio'
# unzip 'Data/1188976.zip' -d 'Data/ravdess_full'
# unzip 'Data/Meld full.zip' -d 'Data/meld_full'
# ssh pdas@hub.cs.helsinki.fi 

# rm -rv imocap_full/
# find . -size +100M | cat >> .gitignore  

# cp home/whisper_project/cache/emodb/1.1.1/fe182b91/ Data/

# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9oeaUw/rtT2DRvtprFvSblO5D9mdLf7fXYKCJ44wtBQfrF41724K7dIcm4/nA/zGblNvJEVEoPfl4DzbSyvWsI+8R15TOMngxDMgQ0VzJEI1o9ZI9FgQZR8HV505GVNZsxs5pz5g6jVGGDwWL3AQmxRv1fpPJ6X5rAwDiVy14GsqrmryPtSkFeaYDIbWqQml5H9Ss5JFoDfcBsKIFn9pqNsaGmGRuHUAWptyeMbKFUZ/Wuk0VyOX9/NzMVSAhw4UMgXNZfWAYAdLs3/961f4Z2GffbUYjlwmJlIl5j4MnVe1pvyycm2Djb2F1kYjdZr8WHwZJ0NoYcrCY/S7MBtn/ pritom.das@helsinki.fi

# echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9oeaUw/rtT2DRvtprFvSblO5D9mdLf7fXYKCJ44wtBQfrF41724K7dIcm4/nA/zGblNvJEVEoPfl4DzbSyvWsI+8R15TOMngxDMgQ0VzJEI1o9ZI9FgQZR8HV505GVNZsxs5pz5g6jVGGDwWL3AQmxRv1fpPJ6X5rAwDiVy14GsqrmryPtSkFeaYDIbWqQml5H9Ss5JFoDfcBsKIFn9pqNsaGmGRuHUAWptyeMbKFUZ/Wuk0VyOX9/NzMVSAhw4UMgXNZfWAYAdLs3/961f4Z2GffbUYjlwmJlIl5j4MnVe1pvyycm2Djb2F1kYjdZr8WHwZJ0NoYcrCY/S7MBtn/ pritom.das@helsinki.fi" >> ~/.ssh/authorized_keys

# lh2-500-27434\localadmin_pdas@10.123.41.62:C:\Users\Localadmin_pdas\Desktop\University of Helsinki\PHD projects\Speech to Text\Other projects\alloy-voice-assistant-main

# module load Python cuDNN

# python3 -m pip install --upgrade pip
# python3 -m venv whisper_env 

# srun -M ukko --mem=32G -p gpu --interactive --pty --gpus=1 /bin/bash

# pip install --upgrade whisper_env

# source whisper_env/bin/activate

# pip  install -U openai-whisper

# # Use this infornt of installs from now on. 
# # --cache-dir /wrk/users/$USER/pip-cache/

# python3 -m venv --upgrade

# pip3 --cache-dir /wrk/users/$USER/pip-cache/ install virtualenv
# virtualenv -p python3.11 new_python

# pip --cache-dir /wrk/users/$USER/pip-cache/ install -U transformers==4.40.0 --upgrade
# pip --cache-dir /wrk/users/$USER/pip-cache/ install accelerate bitsandbytes

# srun script.py
