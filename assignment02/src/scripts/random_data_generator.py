import sys
import numpy as np
from binary_fractions import Binary

def random_samples(
  width: int = 8,
  length: int = 64,
  max_val: float = 3.3,
  min_val: float = 0.0
):
  with open("test_lut.txt", "w") as f:
    for n_sample in range(int(length)):
      sample = np.random.uniform(min_val, max_val)
      sample_bin = str(Binary(sample))
      sample_bin = sample_bin[2:]
      if sample_bin[1] == ".":
        sample_bin = '0' + sample_bin
      sample_bin = sample_bin.replace(".","")
      len_sample_bin = len(sample_bin)
      if len_sample_bin < int(width):
        for pad in range(int(width)-len_sample_bin):
          sample_bin += '0'
      else:
        sample_bin = sample_bin[:14]
      decimal = int(sample_bin, 2)
      print(f"n: {n_sample}    sample: {sample}    bin: {sample_bin}    dec: {decimal}")
      f.write(f"test[{n_sample}] = 14'd{decimal}; //{sample}\n")

if __name__ == '__main__':

  if len(sys.argv) != 3:
    print(f"Usage: python3 {sys.argv[0]} <WIDTH> <LENGTH>") 
    sys.exit()

  WIDTH = sys.argv[1]
  LENGTH = sys.argv[2]
  MAX_VAL = 3.3
  MIN_VAL = 0

  random_samples(
    width=WIDTH,
    length=LENGTH,
    max_val=MAX_VAL,
    min_val=MIN_VAL
  )
