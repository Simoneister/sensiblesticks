#sensiblesticks

##Introduction

sensiblesticks converts CTM4XAS's stick output in to something a little more sensible 

##Instructions

Step 1: Rename the sticks file (or a copy) to "sticks.txt"
Step 2: Place it in the same directory as sensiblesticks.exe
Step 3: Run sensiblesticks.exe
Step 4: sticksoutput.txt should appear

##Description

CTM4XAS's stick output has L, R, and X columns (stacked vertically). This software adds together the intensities for sticks of identical energies. It also removes any peaks with zero intensity.

This software assumes energies of less than 10'000eV.

Sticks may not (and probably won't be) fully sorted (the unique Z sticks will appear in order last), but that's easily fixed in Excel. This is the least sensible bit.

##Author

Simon Lee

simon.lee@flinders.edu.au

@simoneister
