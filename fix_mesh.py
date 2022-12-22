import pymeshfix

# Read mesh from infile and output cleaned mesh to outfile
from sys import argv

infile = argv[1]

try:
    outfile = argv[2]
except Exception:
    outfile = infile

pymeshfix.clean_from_file(infile, outfile)