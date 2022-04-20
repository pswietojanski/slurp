# SLURP: A Spoken Language Understanding Resource Package

This repository contains textual SLURP data and some additional resources allowing to replicate the results published in our [EMNLP 2020 paper](https://www.aclweb.org/anthology/2020.emnlp-main.588.pdf). 

## Getting the data

1. Textual annotations are part of this repository and can be found under `dataset/slurp/` directory
2. To download the corresponding acoustic data, run `scripts/download_audio.sh` script (need around 6GB of disk space). Data is kindly hosted by [Zenodo.org](https://zenodo.org/record/4274930) - an open science sharing platform.

## Further results / resources

Please feel free to get in touch if you obtain any interesting results on SLURP (and they are publicly available, either as a paper or some other form like blogs, etc.). We are happy to link to them from here.

1. SLURP has now an end-to-end [recipe](https://github.com/speechbrain/speechbrain/tree/main/recipes/SLURP) in [SpeechBrain](https://speechbrain.github.io/) toolkit. 
2. SLURP has now an end-to-end recipe in [ESPNet](https://github.com/espnet/espnet) toolkit. See the corresponding paper [here](https://arxiv.org/pdf/2111.14706.pdf).
3. Want to try (text-based portion of) SLURP in a multi-lingual setting? Please check The MASSIVE dataset by AlexaAI@Amazon - a localization of SLURP to 50 typologically diverse languages. More details: [blog](https://www.amazon.science/blog/amazon-releases-51-language-dataset-for-language-understanding), [paper](https://arxiv.org/abs/2204.08582) and [repo](https://github.com/alexa/massive). 

## Brief overview

1. Each SLURP entry has the following structure. It contains NLU annotations and information allowing to link with audio files, as well as the corresponding metadata information. 
    * Note that `wer` (Word Error Rate) and `ent_wer` (Entity WER) fields for each recording were obtained automatically by scoring the ASR hypotheses against expected ground truths. In the paper we used all SLURP entries to train ASR systems (including ones where `wer>0`, but feel free to use this field to filter out less certain recordings.
    * Naming convention for audio files encodes close and distant microphones (`-headset` suffix denotes close-talk variant)

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

2. Each SLURP record (as above) has the corresponding metadata entry in `dataset/slurp/metadata.json`, providing more information on selected items. 
    * Many fields are for our internal use to link SLURP entries to raw database (can be igonored). 
    * Some, however, may be of use. For example, `usrid` field encodes speaker's gender and primary language (native / non-native). The encoding follows the pattern `GenderLanguage-Id`, where `Gender` could be either `F` (Female), `M` (Male) or `UNK` (Unknown). Language is either `E` (native English speaker) or `O` (native of Other langauge than English). `Id` is a uniq three-digit number, does not carry any meaningul information. As such `FE-488` is the recording uttered by a female participant whose English is a native language.

```
"4489": {
        "nlub_id": 5027,
        "recordings": {
            "audio--1504194195-headset.flac": {
                "ansid": 17555,
                "recid": 50412,
                "status": "correct",
                "usrid": "FO-488"
            },
            "audio--1504194195.flac": {
                "ansid": 17555,
                "recid": 50412,
                "status": "correct",
                "usrid": "FO-488"
            },
            "audio-1492784000-headset.flac": {
                "ansid": 17555,
                "recid": 20567,
                "status": "correct",
                "usrid": "UNK-323"
            },
            "audio-1492784000.flac": {
                "ansid": 17555,
                "recid": 20567,
                "status": "correct",
                "usrid": "UNK-323"
            },
            "audio-1502099775-headset.flac": {
                "ansid": 17555,
                "recid": 43759,
                "status": "correct",
                "usrid": "FO-460"
            },
            "audio-1502099775.flac": {
                "ansid": 17555,
                "recid": 43759,
                "status": "correct",
                "usrid": "FO-460"
            }
        },
        "sentence_normalised": "wake me up at eight o'clock",
        "sentence_original": "wake me up at eight o'clock",
        "status": "correct",
        "userid_amt": "682"
    }
```

3. Audio data. Once downloaded you will find two directories `slurp_real` and `slurp_synth` under `audio` directory in the root of the repo. The files are compressed with Free Lossles Audio Codec [FLAC](https://en.wikipedia.org/wiki/FLAC). 

## License

This repo is covered by two types of licensing:
1. Textual data (whatever is distributed via this repository) is released on CC BY 4.0
1. Audio data (whatever is stored on Zenodo.org) is released on CC BY-NC 4.0 (one may obtain a less-strict license by contacting <info@emotech.co>)

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


