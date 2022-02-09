#!/usr/bin/env python
import sys

if len(sys.argv) not in [2,3]:
    print(sys.argv[0], "orig_price [sale_price]")
    sys.exit(1)

orig_price = float(sys.argv[1])*(1-0.4)
print("40%% off original: %.2f" % (orig_price))
if len(sys.argv) == 3:
    sale_price = float(sys.argv[2])*(1-0.25)
    print("25%% off sale: %.2f" % (sale_price))
