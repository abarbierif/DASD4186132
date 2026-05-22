import sys
import os
from binary_fractions import Binary
import math

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

def norm_lut():
    N = 64
    step = 0.5 / 64
    with open("norm_lut.txt", "w") as f:
        for i in range(64):
            m = 0.5 + (i * step)
            x0 = 1.0 / math.sqrt(m)
            fp_entry = str(Binary(x0))[2:]
            fp_entry = fp_entry.replace(".","")
            len_fp_entry = len(fp_entry)
            if len_fp_entry < 16:
                for p in range(0, (16 - len_fp_entry)):
                    fp_entry += '0'
            int_number = int(fp_entry[:17], 2)
            f.write(f"norm[{i}] = 18'd{str(int_number)};\n")
            print(f"{i}: m={m:.6f}  x0={x0:.6f}  fp_entry={fp_entry[:17]} int_number={int_number}")
#def norm_lut():
#    
#    N=64
#    step=0.5/64
#    with open("norm_lut.txt", "w") as f:
#        for _ in range(64):
#            entry = 0.5+(_*step)
#            fp_entry = str(Binary(entry))[4:]
#            len_fp_entry = len(fp_entry)
#            if len_fp_entry < 13:
#                for p in range(0, (13-len_fp_entry)):
#                    fp_entry += '0'
#
#            int_number = int(fp_entry, 2)
#            f.write(f"norm[{_}] = 18'd{str(int_number)};\n")
#            print(f"{_}: {entry} {Binary(fp_entry)}    {int_number}")

if __name__ == '__main__':
    
    if len(sys.argv) != 2:
        print(f"Usage: python3 {sys.argv[0]} <div|norm>")
        sys.exit()

    lut = sys.argv[1]
        
    if lut == "div":
      div_lut()
    elif lut == "norm":
      norm_lut()
