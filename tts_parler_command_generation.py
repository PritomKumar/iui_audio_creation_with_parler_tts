import torch
from parler_tts import ParlerTTSForConditionalGeneration
from transformers import AutoTokenizer, set_seed
import soundfile as sf
from command_list import user_command_list
import random


device = "cuda:0" if torch.cuda.is_available() else "cpu"

model = ParlerTTSForConditionalGeneration.from_pretrained("parler-tts/parler-tts-mini-expresso").to(device)
tokenizer = AutoTokenizer.from_pretrained("parler-tts/parler-tts-mini-expresso")

speakers = ["Jerry", "Thomas", "Talia", "Elisabeth"]

for i, prompt in enumerate(user_command_list):
    print(f"User command: {prompt}")

    # prompt = "What are the limitations of current VR technology?"
    # description = "Thomas speaks slowly with emphasis and high quality audio."
    
    description = f"{random.choice(speakers)} speaks slowly with high quality audio."
    print(f"Speech style: {description}\n")

    input_ids = tokenizer(description, return_tensors="pt").input_ids.to(device)
    prompt_input_ids = tokenizer(prompt, return_tensors="pt").input_ids.to(device)

    set_seed(42)
    generation = model.generate(input_ids=input_ids, prompt_input_ids=prompt_input_ids)
    audio_arr = generation.cpu().numpy().squeeze()
    sf.write(f"./iui_paper_stuff/audio/user_command_{i+1}.wav", audio_arr, model.config.sampling_rate)
