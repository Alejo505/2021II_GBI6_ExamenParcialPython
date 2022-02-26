# Escriba aquí su código para el ejercicio 6
from Bio import SeqIO
from Bio import AlignIO
from Bio import Phylo
from Bio.Align.Applications import ClustalwCommandline
import os
from Bio.Phylo.TreeConstruction import DistanceCalculator
from Bio.Phylo.TreeConstruction import DistanceTreeConstructor
with open("sequence.seq","r") as f:
    ClustalAlign = AlignIO.read(f, "clustal")
print(ClustalAlign)
calculator=DistanceCalculator("indetity")
distane_matriz=calculator.get_distance(ClustalAlign)
#clustalw_exe = r"C:\Program Files (x86)\ClustalW2\clustalw2.exe"
#clustalw_cline = ClustalwCommandline(clustalw_exe, infile = f)
#assert os.path.isfile(clustalw_exe), "Clustal_W executable is missing or not found"
#stdout, stderr = clustalw_cline()
#print(clustalw_cline)
