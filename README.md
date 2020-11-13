# SLURP: A Spoken Language Understanding Resource Package

This repository contains textual SLURP data and some additional resources allowing to replicate the results published in the paper. 

## Getting data

1. Textual annotations are part of this repository and can be found under `dataset/slurp/` directory
2. To download the corresponding acoustic data, run `scripts/download_audio.sh` script (need around 6GB of disk space)

## Brief overview

1. Mention data organisation

```
```

2. Each slurp entry looks something like below, you can acces

```
{
    "slurp_id": 4489,
    "sentence": "wake me up at eight o'clock",
    "sentence_annotation": "wake me up at [time : eight] o'clock",
    "intent": "alarm_set",
    "action": "set",
    "tokens": [
        {
            "surface": "wake",
            "id": 0,
            "lemma": "wake",
            "pos": "VB"
        },
        {
            "surface": "me",
            "id": 1,
            "lemma": "-PRON-",
            "pos": "PRP"
        },
        {
            "surface": "up",
            "id": 2,
            "lemma": "up",
            "pos": "RP"
        },
        {
            "surface": "at",
            "id": 3,
            "lemma": "at",
            "pos": "IN"
        },
        {
            "surface": "eight",
            "id": 4,
            "lemma": "eight",
            "pos": "CD"
        },
        {
            "surface": "o'clock",
            "id": 5,
            "lemma": "o'clock",
            "pos": "NN"
        }
    ],
    "scenario": "alarm",
    "recordings": [
        {
            "file": "audio-1502099775-headset.flac",
            "wer": 0,
            "ent_wer": 0,
            "status": "correct"
        },
        {
            "file": "audio-1502099775.flac",
            "wer": 0,
            "ent_wer": 0,
            "status": "correct"
        },
        {
            "file": "audio--1504194195-headset.flac",
            "wer": 0,
            "ent_wer": 0,
            "status": "correct"
        },
        {
            "file": "audio--1504194195.flac",
            "wer": 0,
            "ent_wer": 0,
            "status": "correct"
        },
        {
            "file": "audio-1492784000-headset.flac",
            "wer": 0,
            "ent_wer": 0,
            "status": "correct"
        },
        {
            "file": "audio-1492784000.flac",
            "wer": 0,
            "ent_wer": 0,
            "status": "correct"
        }
    ],
    "entities": [
        {
            "span": [
                4
            ],
            "type": "time"
        }
    ]
}
```

3. Explain metadata entry a bit?

```
```

4. Perhaps a sentence on audio data

## Reproducing results

1. ASR
2. NLU

## Citation

If this dataset proves useful, please cite our corresponding [EMNLP 2020 paper](https://www.aclweb.org/anthology/2020.emnlp-main.588.pdf):

```
@inproceedings{slurp,
    author = {Emanuele Bastianelli and Andrea Vanzo and Pawel Swietojanski and Verena Rieser},
    title={{SLURP: A Spoken Language Understanding Resource Package}},
    booktitle={{Proceedings of the 2020 Conference on Empirical Methods in Natural Language Processing (EMNLP)}},
    year={2020}
}
```


