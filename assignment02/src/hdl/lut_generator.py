import sys
import os
from binary_fractions import Binary

def div_lut():

    '''generates LUT's entries of 1/n'''

    N = 1024
    if N+8 > 1024:
        M = 1024
    else:
        M = N+8
    with open("div_lut.txt", "w") as f:

        for n in range(8,M+1):
            fp_number = str(Binary(1/n))
            #print(len(fp))
            fractional_bits = fp_number[4:24]
            len_fractional_bits = len(fractional_bits)
            if len_fractional_bits < 20:
                for p in range(0, (20-len_fractional_bits)):
                    fractional_bits += '0'

            int_number = int(fractional_bits,2)
            #print(f"int: {int_number}, fractional bits: {fractional_bits}")
            f.write(f"div[{n-8}] = 20'd{str(int_number)};\n")

        for n in range(1016, N):
            f.write(f"div[{n}] = 20'd{str(0)};\n")

def div_norm():
    print("Not defined yet")

if __name__ == '__main__':
    
    if len(sys.argv) != 2:
        print(f"Usage: python3 {sys.argv[0]} div|norm")
        sys.exit()

    lut = sys.argv[1]
        
    if lut == "div":
      div_lut()
    elif lut == "norm":
      norm_lut()
