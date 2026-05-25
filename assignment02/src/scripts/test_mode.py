import sys
import math
import numpy as np

def gold_test_output(n_samples: int = 0):

    if n_samples > 1016:
        m_samples = 1024
    elif n_samples < 0:
        m_samples = 8
    else:
        m_samples = n_samples + 8

    data_in = []
    
    with open("test_lut.txt", "r") as f:
        for sample,line in enumerate(f):
            entry = line.split('//')[1]
            data  = float(entry.strip('\n'))
            print(sample, data)

            data_in.append(data)

            if(sample == m_samples-1):
              break

        data_in_squared = [_**2 for _ in data_in]
        
        print(f"\nMAX = {np.max(data_in)}")
        print(f"MIN = {np.min(data_in)}")
        print(f"MEAN = {np.mean(data_in)}")
        print(f"RMS = {math.sqrt(np.mean(data_in_squared))}")

if __name__ == '__main__':

    if len(sys.argv) != 2:
        print(f"Usage: python3 {sys.argv[0]} <n_samples>")
        sys.exit()

    n_samples = int(sys.argv[1])

    gold_test_output(n_samples = n_samples)
