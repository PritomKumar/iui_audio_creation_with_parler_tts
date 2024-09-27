ssh pdas@turso01.cs.helsinki.fi
cd whisper_project/
srun -M ukko --mem=32G -p gpu --interactive --pty --gpus=1 /bin/bash