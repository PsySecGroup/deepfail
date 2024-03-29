# DeepFail
#### A proof-of-fail methodology

As face generation applications for deepfake purposes get better with time, bad faces will become less frequent.  This makes those deepfake failures special, unique, and depreciating over time, similar to the deflationary properties of BitCoin.  The lowered frequency of failing faces increasing over time also can operate like a mining difficulty.

To demonstrate this, DeepFail grabs photos from [ThisPersonDoesNotExist.com](https://thispersondoesnotexist.com) and checks to see if a face in the result can be detected.  If no face is detected, proof-of-fail is established and the hash of the image is saved to the `fail.chain`.

A team could theoretically use this technique to issue tokens for training new AIs.  As long as the AI hits their targets, failures decrease and tokens are minted less over time.  If the AI misses their tagets, more tokens are minted than anticipated which then causes inflation.

_DeepFail_ is an tongue-in-cheek example of how to reinterpret the [psychosecurity threats](https://github.com/PsySecGroup/foundation/blob/main/GUIDANCE.md)
surrounding [weaponized deepfakes](https://www.jstor.org/stable/resrep25129.7?seq=1).

## Install

Run this command on Ubuntu 20.04 or similar variants.

```bash
mkdir ~/deepfail
cd ~/deepfail
wget -qO- https://raw.githubusercontent.com/hypercrowd-opensource/deepfail/v1.0.0/install.sh | bash
```

## Getting Started

```bash
cd ~/deepfail
./mine.sh
```
